package com.itheima.domain;

import lombok.Data;

import java.io.Serializable;
@Data
public class Reader  {
    private Integer id;

    private String readerId;

    private String readerName;

    private String cardId;


    private String education;

    private String createDate;



}