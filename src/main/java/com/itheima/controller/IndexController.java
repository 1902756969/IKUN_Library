package com.itheima.controller;

import com.itheima.service.IReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 设置默认访问首页
 */

@Controller
public class IndexController {

    @Autowired
    private IReaderService iReaderService;

    @GetMapping({"/login",})
    public String index(){

        return "loginForm";
    }




    @GetMapping("/main")
    public String toMain(){
        return "main" ;
    }

    @GetMapping("/welcome")
    public String toWelcome(){
        return "welcome";
    }

}
