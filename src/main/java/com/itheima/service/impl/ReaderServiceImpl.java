package com.itheima.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.dao.BookDao;
import com.itheima.dao.ReaderDao;
import com.itheima.domain.Book;
import com.itheima.domain.Reader;
import com.itheima.domain.User;
import com.itheima.service.IBookService;
import com.itheima.service.IReaderService;
import org.apache.logging.log4j.util.Strings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ReaderServiceImpl extends ServiceImpl<ReaderDao, Reader> implements IReaderService {
  @Autowired
   private ReaderDao readerDao;

    @Override
    public boolean saveReader(Reader reader) {
        return readerDao.insert(reader) > 0;
    }

    @Override
    public boolean update(Reader reader) {
        return readerDao.updateById(reader) > 0;
    }

    @Override
    public boolean delete(Integer id) {
        return readerDao.deleteById(id) > 0;
    }

    @Override
    public List<Reader> getAll() {
        return readerDao.selectList(null);
    }

    @Override
    public IPage<Reader> getPage(int currentPage, int pageSize) {
        IPage page = new Page(currentPage,pageSize);
        readerDao.selectPage(page,null);
        return page;
    }

    @Override
    public IPage<Reader> getPage(int currentPage, int pageSize, Reader reader) {

        LambdaQueryWrapper<Reader> lqw = new LambdaQueryWrapper<Reader>();
        lqw.like(Strings.isNotEmpty(reader.getReaderId()), Reader::getReaderId, reader.getReaderId());
        lqw.like(Strings.isNotEmpty(reader.getReaderName()),Reader::getReaderName,reader.getReaderName());
        lqw.like(Strings.isNotEmpty(reader.getCardId()), Reader::getCardId, reader.getCardId());
        lqw.like(Strings.isNotEmpty(reader.getEducation()), Reader::getEducation, reader.getEducation());


        IPage page = new Page(currentPage,pageSize);
        readerDao.selectPage(page,lqw);
        return page;
    }


}
