package com.itheima.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.itheima.controller.utils.R;
import com.itheima.domain.Book;
import com.itheima.domain.Reader;
import com.itheima.domain.User;
import com.itheima.service.IBookService;
import com.itheima.service.IReaderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/reader")
public class ReaderController {


    @Autowired
    private IReaderService iReaderService;


    @GetMapping
    public R getAll(){
        return new R(true, iReaderService.list());
    }

    @PostMapping
    public R save(@RequestBody Reader reader) throws IOException {
//        R r = new R();
//        boolean flag = bookService.save(book);
//        r.setFlag(flag);
        if (reader.getReaderName().equals("123") ) throw new IOException();
        boolean flag = iReaderService.save(reader);
        return new R(flag, flag ? "添加成功^_^" : "添加失败-_-!");
    }

    @PutMapping
    public R update(@RequestBody Reader reader) throws IOException {
        if (reader.getReaderName().equals("123") ) throw new IOException();
        boolean flag = iReaderService.update(reader);
        return new R(flag, flag ? "修改成功^_^" : "修改失败-_-!");
    }

    @DeleteMapping("{id}")
    public R delete(@PathVariable Integer id){
        return new R(iReaderService.delete(id));
    }

    @GetMapping("{id}")
    public R getById(@PathVariable Integer id){
        return new R(true, iReaderService.getById(id));
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
    public R getPage(@PathVariable int currentPage,@PathVariable int pageSize,Reader reader){
//        System.out.println("参数==>"+book);

        IPage<Reader> page = iReaderService.getPage(currentPage, pageSize,reader);
        //如果当前页码值大于了总页码值，那么重新执行查询操作，使用最大页码值作为当前页码值
        if( currentPage > page.getPages()){
            page = iReaderService.getPage((int)page.getPages(), pageSize,reader);
        }
        return new R(true, page);
    }
}
