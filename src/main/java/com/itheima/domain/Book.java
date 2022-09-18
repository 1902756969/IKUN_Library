package com.itheima.domain;
//lombok


import lombok.Data;

import java.io.Serializable;
import java.util.Date;


@Data
public class Book{


    private Integer id;

    private String isbn;

    private String bookName;

    private String author;

    private String synopsis;

    private String publisher;

    private String publicationDate;

    private String last;

    private String notes;


}