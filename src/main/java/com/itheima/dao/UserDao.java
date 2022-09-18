package com.itheima.dao;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itheima.domain.Book;
import com.itheima.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
@Mapper
public interface UserDao extends BaseMapper<User> {

    //手动添加的方法
    @Select("select * from tbl_user where login_name=#{loginName} and password=#{password}")
    List<User> checkUser(@Param("loginName") String loginName, @Param("password") String password);



}