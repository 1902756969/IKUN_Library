package com.itheima.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import com.itheima.dao.BookDao;
import com.itheima.dao.BorrowDao;

import com.itheima.domain.Borrow;
import com.itheima.service.IBorrwoService;
import org.apache.ibatis.annotations.Param;
import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BorrowSericeImpl  extends ServiceImpl<BorrowDao, Borrow> implements IBorrwoService {

    @Autowired
    private BorrowDao borrowDao;


    @Autowired
    private BookDao bookDao;


    @Override
    public List<Borrow> addborrow(Borrow borrow) {
        return borrowDao.addborrow(borrow);
    }

    @Override
    public boolean update(Borrow borrow) {
        return borrowDao.updateById(borrow) > 0;
    }

    @Override
    public boolean delete(Integer id) {
        return borrowDao.deleteById(id) > 0;
    }

    @Override
    public List<Borrow> getAll() {
        return borrowDao.selectList(null);
    }

    @Override
    public IPage<Borrow> getPage(int currentPage, int pageSize) {
        IPage page = new Page(currentPage,pageSize);
        borrowDao.selectPage(page,null);
        return page;
    }

    @Override
    public IPage<Borrow> getPage(int currentPage, int pageSize, Borrow borrow) {
        LambdaQueryWrapper<Borrow> lqw = new LambdaQueryWrapper<Borrow>();
        lqw.like(Strings.isNotEmpty(borrow.getIsbnLog()), Borrow::getIsbnLog, borrow.getIsbnLog());
        lqw.like(Strings.isNotEmpty(borrow.getBooknameLog()), Borrow::getBooknameLog, borrow.getBooknameLog());
        lqw.like(Strings.isNotEmpty(borrow.getReaderidLog()), Borrow::getReaderidLog, borrow.getReaderidLog());
        lqw.like(Strings.isNotEmpty(borrow.getReadernameLog()), Borrow::getReadernameLog, borrow.getReadernameLog());
        lqw.like(Strings.isNotEmpty(borrow.getCardidLog()), Borrow::getCardidLog, borrow.getCardidLog());
      /*  lqw.like(Strings.isNotEmpty((CharSequence) borrow.getBeginTime()), Borrow::getBeginTime, borrow.getBeginTime());
        lqw.like(Strings.isNotEmpty((CharSequence)borrow.getEndTime()), Borrow::getBeginTime, borrow.getBeginTime());*/
        lqw.like(Strings.isNotEmpty(borrow.getNum()), Borrow::getNum, borrow.getNum());


        IPage page = new Page(currentPage,pageSize);
        borrowDao  .selectPage(page,lqw);
        return page;
    }


}
