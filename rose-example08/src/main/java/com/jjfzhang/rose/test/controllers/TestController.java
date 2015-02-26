package com.jjfzhang.rose.test.controllers;

import net.paoding.rose.web.Invocation;
import net.paoding.rose.web.annotation.rest.Get;

public class TestController {
    @Get()
    public String index(Invocation inv) {
        return "test";
    }
}