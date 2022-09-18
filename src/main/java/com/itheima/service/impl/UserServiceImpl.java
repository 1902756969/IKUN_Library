package com.itheima.service.impl;

import com.itheima.dao.UserDao;
import com.itheima.domain.User;
import com.itheima.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {


   @Autowired
   private UserDao userDao;


    @Override
    public List<User> checkUser(String loginName, String password) {
        return userDao.checkUser(loginName,password);
    }

/*
    LambdaQueryWrapper<User> lqw = new LambdaQueryWrapper<User>();
        lqw.like(Strings.isNotEmpty(user.getUserId()), User::getUserId, user.getUserId());
        lqw.like(Strings.isNotEmpty(user.getLoginName()),User::getLoginName,user.getLoginName());
        lqw.like(Strings.isNotEmpty(user.getUserName()), User::getUserName, user.getUserName());
        lqw.like(Strings.isNotEmpty(user.getPassword()),User::getPassword,user.getPassword());
        lqw.like(Strings.isNotEmpty(user.getStatus()), User::getStatus, user.getStatus());
        lqw.like(Strings.isNotEmpty(user.getLoginName()),User::getLoginName,user.getLoginName());



    IPage page = new Page(currentPage,pageSize);
        userDao.selectPage(page,lqw);
        return page;*/
}
