package com.itheima.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itheima.domain.Book;
import com.itheima.domain.Borrow;
import com.itheima.service.impl.BorrowSericeImpl;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class BookServiceTest {

    @Autowired
    private IBookService bookService;

    @Autowired
    IReaderService iReaderService;

    @Autowired
    BorrowSericeImpl iBorrwoServiceL;

    @Test
    void testGetById(){
        System.out.println(bookService.getById(4));
    }


    @Test
    void testSave(){
        System.out.println(iBorrwoServiceL.getAll());
       // iBorrwoServiceL.delete(1);
       // System.out.println(iReaderService.getAll());
    }

    @Test
    void testUpdate(){
        Borrow borrow=new Borrow();
        borrow.setIsbnLog("9000000000000");

        borrow.setBooknameLog("null");
        borrow.setNum("8");
        iBorrwoServiceL.addborrow(borrow);

    }

    @Test
    void testDelete(){
        bookService.removeById(18);
    }

    @Test
    void testGetAll(){
        bookService.list();
    }

    @Test
    void testGetPage(){
        IPage<Book> page = new Page<Book>(2,5);
        bookService.page(page);
        System.out.println(page.getCurrent());
        System.out.println(page.getSize());
        System.out.println(page.getTotal());
        System.out.println(page.getPages());
        System.out.println(page.getRecords());
    }

}
