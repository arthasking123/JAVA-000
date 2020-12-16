package io.kimmking.rpcfx.consumer.jmeter.test;

import io.kimmking.rpcfx.client.Rpcfx;
import io.kimmking.rpcfx.demo.api.User;
import io.kimmking.rpcfx.demo.api.UserService;
import org.apache.jmeter.config.Arguments;
import org.apache.jmeter.protocol.java.sampler.AbstractJavaSamplerClient;
import org.apache.jmeter.protocol.java.sampler.JavaSamplerContext;
import org.apache.jmeter.samplers.SampleResult;

/**
 * Created by zy on 2020/12/15.
 */
public class ThriftClientTest extends AbstractJavaSamplerClient {
    private UserService userService;

    /**
     * 设置入参，已设置的参数会显示在jmeter GUI的参数列表中
     *
     * @return
     */
    @Override
    public Arguments getDefaultParameters() {
        Arguments arguments = new Arguments();
        return arguments;
    }

    /**
     * 初始化方法，用于初始化性能测试的每个线程，每个线程前都会执行一次
     *
     * @param context
     */
    @Override
    public void setupTest(JavaSamplerContext context) {
        userService = Rpcfx.create(UserService.class, "http://localhost:8090/");
    }

    /**
     * 性能测试的线程运行体，测试执行主体，从context中获取参数，并调用被测方法，完成与服务器的交互。
     * 该方法是java Sampler实现的重点，执行次数取决于线程数和循环次数
     *
     * @param javaSamplerContext
     * @return
     */
    @Override
    public SampleResult runTest(JavaSamplerContext javaSamplerContext) {
        SampleResult sampleResult = new SampleResult();

        try {
            sampleResult.sampleStart();
            long start = System.currentTimeMillis();

            User user = userService.findById(1);
            System.out.println("find user id=1 from server: " + user.getName());

            long end = System.currentTimeMillis();
            System.out.println("==============cost:" + (end - start) + "ms");
            sampleResult.setSuccessful(true);
        }  finally {
            sampleResult.sampleEnd();
        }

        return sampleResult;
    }

    /**
     * 测试结束时调用，每个线程执行一次，常用于关闭资源
     *
     * @param context
     */
    @Override
    public void teardownTest(JavaSamplerContext context) {

    }

    public static void main(String[] args) {
        JavaSamplerContext arg0 = new JavaSamplerContext(new Arguments());
        ThriftClientTest test = new ThriftClientTest();
        test.setupTest(arg0);
        test.runTest(arg0);
        test.teardownTest(arg0);
    }
}