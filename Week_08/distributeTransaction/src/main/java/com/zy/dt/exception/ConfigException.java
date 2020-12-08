package com.zy.dt.exception;

public class ConfigException extends RuntimeException {

    /**
     * Instantiates a new Config exception.
     *
     * @param e the e
     */
    public ConfigException(final Throwable e) {
        super(e);
    }

    /**
     * Instantiates a new Config exception.
     *
     * @param message the message
     */
    public ConfigException(final String message) {
        super(message);
    }

    /**
     * Instantiates a new Config exception.
     *
     * @param message   the message
     * @param throwable the throwable
     */
    public ConfigException(final String message, final Throwable throwable) {
        super(message, throwable);
    }
}