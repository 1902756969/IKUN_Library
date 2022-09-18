package com.itheima.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.itheima.domain.Book;
import com.itheima.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface UserService  {

/*
    Boolean saveUser(User user);

    Boolean modify(User user);

    Boolean delete(Integer id);

    List<User> getAll();

    IPage<User> getPage(int currentPage, int pageSize);
*/


    List<User> checkUser(@Param("loginName") String loginName, @Param("password") String password);

}
