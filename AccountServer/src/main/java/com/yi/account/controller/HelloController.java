package com.yi.account.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v0/account")
public class HelloController {

    @GetMapping("/hello")
    public String hello(){
        return "Hello Word!";
    }
}
