package com.project.demo.common.exception;

/**
 * @author Administrator
 */
public class SystemException extends RuntimeException{
    public SystemException() {
    }

    public SystemException(String message) {
        super(message);
    }
}
