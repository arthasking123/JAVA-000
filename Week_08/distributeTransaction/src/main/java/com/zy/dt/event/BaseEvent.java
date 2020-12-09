package com.zy.dt.event;

import lombok.Data;
import java.util.concurrent.Callable;

@Data
public class BaseEvent {
    public Callable<Boolean> tryEvent;
    public Callable<Object>  confirmEvent;
    public Callable<Object>  cancelEvent;
    public Integer timeOut;
    BaseEvent(Callable<Boolean> tryEvent, Callable<Object> confirmEvent, Callable<Object> cancelEvent, Integer timeOut){
        this.tryEvent = tryEvent;
        this.confirmEvent = confirmEvent;
        this.cancelEvent = cancelEvent;
        this.timeOut = timeOut;
    }
}
