package com.itheima.controller.utils;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

//作为springmvc的异常处理器
//@ControllerAdvice
@RestControllerAdvice
public class MessageExceptionAdvice {
    //拦截所有的异常信息
    @ExceptionHandler(Exception.class)
    public M doException(Exception ex){
        //记录日志
        //通知运维
        //通知开发
        ex.printStackTrace();
        return new M("数据不匹配，请输入正确数据！");
    }


}
