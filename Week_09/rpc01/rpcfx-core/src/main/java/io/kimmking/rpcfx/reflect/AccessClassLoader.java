package io.kimmking.rpcfx.reflect;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;

/**
 * Created by wangzhiyuan on 2018/8/13
 */
public class AccessClassLoader extends ClassLoader {
    private static AccessClassLoader accessClassLoader = new AccessClassLoader();

    private AccessClassLoader() {
        super(Thread.currentThread().getContextClassLoader());
    }

    public static AccessClassLoader instance(){
        return accessClassLoader;
    }

}
