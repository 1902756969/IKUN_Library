package com.itheima.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.itheima.dao.ReaderDao;
import com.itheima.domain.Book;
import com.itheima.domain.Reader;
import com.itheima.domain.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Transactional
public interface IReaderService extends IService<Reader> {

    boolean saveReader(Reader reader);

    boolean update(Reader reader);

    boolean delete(Integer id);

    List<Reader> getAll();

    IPage<Reader> getPage(int currentPage, int pageSize);

    IPage<Reader> getPage(int currentPage, int pageSize, Reader reader);


}
