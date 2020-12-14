package io.kimmking.rpcfx.exception;

import org.springframework.web.bind.annotation.ExceptionHandler;

/**
 * Created by zy on 2020/12/14.
 */
public class RpcfxException extends Exception {

    /**
     * Instantiates a new Config exception.
     *
     * @param e the e
     */
    public RpcfxException(final Throwable e) {
        super(e);
    }

    /**
     * Instantiates a new Config exception.
     *
     * @param message the message
     */
    public RpcfxException(final String message) {
        super(message);
    }

    /**
     * Instantiates a new Config exception.
     *
     * @param message   the message
     * @param throwable the throwable
     */
    public RpcfxException(final String message, final Throwable throwable) {
        super(message, throwable);
    }
}