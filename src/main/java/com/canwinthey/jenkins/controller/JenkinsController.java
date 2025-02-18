package com.canwinthey.jenkins.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/jenkins")
public class JenkinsController {

    @GetMapping("/")
    public String welcome(){
        return "Welcome to Jenkins demo!!!!";
    }
}
