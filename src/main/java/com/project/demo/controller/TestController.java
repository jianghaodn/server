package com.project.demo.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.demo.common.CommonResult;
import com.project.demo.entity.Article;

import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/test")
@Slf4j
public class TestController {
    @GetMapping
    public CommonResult test(String msg) {
        log.info(msg);
        CommonResult commonResult = CommonResult.success();
        return commonResult;
    }

    @GetMapping("/data")
    public CommonResult getObject() {
        return CommonResult.okResult(List.of(1, 2, 3, 3, 4, 3));
    }
}
