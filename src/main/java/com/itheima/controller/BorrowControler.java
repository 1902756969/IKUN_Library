package com.itheima.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.itheima.controller.utils.R;
import com.itheima.domain.Book;
import com.itheima.domain.Borrow;
import com.itheima.service.IBorrwoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;

@RestController
@RequestMapping("/borrow")
public class BorrowControler {
    @Autowired
    private IBorrwoService BorrwoService;

    @GetMapping
    public R getAll(){
        return new R(true, BorrwoService.list());
    }


    @PostMapping
    public R save(@RequestBody Borrow borrow) throws IOException {
//        R r = new R();
//        boolean flag = bookService.save(book);
//        r.setFlag(flag);
        if (borrow.getReaderidLog().equals("123") ) throw new IOException();
        boolean flag = BorrwoService.save(borrow);
        return new R(flag, flag ? "添加成功^_^" : "添加失败-_-!");
    }

    @PutMapping
    public R update(@RequestBody Borrow borrow) throws IOException {
        if (borrow.getReaderidLog().equals("123") ) throw new IOException();
        boolean flag = BorrwoService.update(borrow);
        return new R(flag, flag ? "修改成功^_^" : "修改失败-_-!");
    }

    @DeleteMapping("{id}")
    public R delete(@PathVariable Integer id){
        return new R(BorrwoService.delete(id));
    }

    @GetMapping("{id}")
    public R getById(@PathVariable Integer id){
        return new R(true, BorrwoService.getById(id));
    }

//    @GetMapping("{currentPage}/{pageSize}")
//    public R getPage(@PathVariable int currentPage,@PathVariable int pageSize){
//        IPage<Book> page = bookService.getPage(currentPage, pageSize);
//        //如果当前页码值大于了总页码值，那么重新执行查询操作，使用最大页码值作为当前页码值
//        if( currentPage > page.getPages()){
//            page = bookService.getPage((int)page.getPages(), pageSize);
//        }
//        return new R(true, page);
//    }

    @GetMapping("{currentPage}/{pageSize}")
    public R getPage(@PathVariable int currentPage,@PathVariable int pageSize,Borrow borrow){
//        System.out.println("参数==>"+book);

        IPage<Borrow> page = BorrwoService.getPage(currentPage, pageSize,borrow);
        //如果当前页码值大于了总页码值，那么重新执行查询操作，使用最大页码值作为当前页码值
        if( currentPage > page.getPages()){
            page = BorrwoService.getPage((int)page.getPages(), pageSize,borrow);
        }
        return new R(true, page);
    }


}
