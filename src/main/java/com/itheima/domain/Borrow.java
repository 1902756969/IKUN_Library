package com.itheima.domain;

import lombok.Data;


import java.io.Serializable;
import java.util.Date;

@Data
public class Borrow implements Serializable {


    private Integer id;


    private String isbnLog;

    private String booknameLog;

    private String readeridLog;

    private String readernameLog;

/*    private Date beginTime;

    private Date endTime;*/

    private String cardidLog;

    private String num;


}