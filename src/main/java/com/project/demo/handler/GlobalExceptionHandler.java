package com.project.demo.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.project.demo.common.exception.SystemException;

import lombok.extern.slf4j.Slf4j;

@ControllerAdvice
@Slf4j
public class GlobalExceptionHandler {

    @ExceptionHandler(Exception.class)
    public void exception(Exception e) {
        log.error("出现了错误");
        log.error(e.getMessage());
    }

    @ExceptionHandler(SystemException.class)
    public void systemExceptionHandhler(Exception e) {
        log.error("出现了错误");
        log.error(e.getMessage());
    }
}