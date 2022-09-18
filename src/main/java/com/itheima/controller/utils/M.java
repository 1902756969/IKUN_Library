package com.itheima.controller.utils;

import lombok.Data;

@Data
public class M {
    private Boolean flag;
    private Object data;
    private String msg;

    public M(){}

    public M(Boolean flag){
        this.flag = flag;
    }

    public M(Boolean flag, Object data){
        this.flag = flag;
        this.data = data;
    }

    public M(Boolean flag, String msg){
        this.flag = flag;
        this.msg = msg;
    }

    public M(String msg){
        this.flag = false;
        this.msg = msg;
    }
}
