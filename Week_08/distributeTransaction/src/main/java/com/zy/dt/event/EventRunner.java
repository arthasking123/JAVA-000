package com.zy.dt.event;

import com.zy.dt.config.YAMLLoader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import java.util.ArrayList;
import java.util.concurrent.*;

public class EventRunner {

    private static final Logger LOGGER = LoggerFactory.getLogger(EventRunner.class);

    private ArrayList<BaseEvent> eventList = new ArrayList<>();

    private BaseEvent mainEvent;

    private boolean bParallelRun = false;

    private static Integer defaultTimeout = Integer.parseInt(YAMLLoader.loadString("defaults.local-transaction-timeout"));

    ExecutorService exec = Executors.newFixedThreadPool(1);

    public EventRunner(boolean bParallelRun){
        this.bParallelRun = bParallelRun;
    }

    public EventRunner addSubEvent(Callable<Boolean> tryEvent, Callable<Object> confirmEvent, Callable<Object> cancelEvent, Integer timeOut){
        BaseEvent event = new BaseEvent(tryEvent, confirmEvent, cancelEvent, timeOut);
        eventList.add(event);
        return this;
    }

    public EventRunner addSubEvent(Callable<Boolean> tryEvent, Callable<Object> confirmEvent, Callable<Object> cancelEvent){
        addSubEvent(tryEvent, confirmEvent, cancelEvent, defaultTimeout);
        return this;
    }

    public EventRunner addBaseEvent(Callable<Boolean> tryEvent, Callable<Object> confirmEvent, Callable<Object> cancelEvent, Integer timeOut){
        mainEvent = new BaseEvent(tryEvent, confirmEvent, cancelEvent, timeOut);
        return this;
    }

    public EventRunner addBaseEvent(Callable<Boolean> tryEvent, Callable<Object> confirmEvent, Callable<Object> cancelEvent){
        addBaseEvent(tryEvent, confirmEvent, cancelEvent, defaultTimeout);
        return this;
    }

    public EventRunner clear(){
        eventList.clear();
        mainEvent = null;
        return this;
    }

    public Object run(){
        int currentRunIndex = 0;
        if(!bParallelRun){
            try{
                Boolean result = exec.submit(mainEvent.tryEvent).get(mainEvent.timeOut,TimeUnit.MILLISECONDS);
                if(!result)
                   return fail(0);

                for(;currentRunIndex < eventList.size() ; currentRunIndex++ ){
                   BaseEvent event = eventList.get(currentRunIndex);
                   Boolean subResult = exec.submit(event.tryEvent).get(event.timeOut,TimeUnit.MILLISECONDS);
                   if(!subResult)
                       return fail(currentRunIndex);
                }
            }
            catch(TimeoutException e){
                e.printStackTrace();
                LOGGER.error("任务执行超时");
                return fail(currentRunIndex);
            }
            catch(Exception e){
               e.printStackTrace();
               return fail(currentRunIndex);
            }
        }

        return success();
    }

    Object success() {
        if (!bParallelRun) {
            try {
                for(int currentRunIndex = 0; currentRunIndex < eventList.size(); currentRunIndex++) {
                    BaseEvent event = eventList.get(currentRunIndex);
                    Object subResult = exec.submit(event.confirmEvent).get(event.timeOut,TimeUnit.MILLISECONDS);
                }
                return mainEvent.confirmEvent.call();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        clear();
        return null;
    }

    Object fail(Integer runIndex){
        if (!bParallelRun) {
            try {
                for(int currentRunIndex = 0; currentRunIndex < runIndex; currentRunIndex++) {
                    BaseEvent event = eventList.get(currentRunIndex);
                    Object subResult = exec.submit(event.cancelEvent).get(event.timeOut,TimeUnit.MILLISECONDS);
                }
                return mainEvent.cancelEvent.call();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        clear();
        return null;
    }


}
