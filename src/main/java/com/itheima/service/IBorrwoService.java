package com.itheima.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.itheima.domain.Borrow;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface IBorrwoService extends IService<Borrow> {
    List<Borrow> addborrow(Borrow borrow);

    boolean update(Borrow borrow);

    boolean delete(Integer id);

    List<Borrow> getAll();

    IPage<Borrow> getPage(int currentPage, int pageSize);

    IPage<Borrow> getPage(int currentPage, int pageSize, Borrow borrow);

}
