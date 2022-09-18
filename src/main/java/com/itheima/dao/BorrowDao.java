package com.itheima.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itheima.domain.Borrow;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface BorrowDao extends BaseMapper<Borrow> {

    @Select("INSERT INTO `tbl_borrow` (isbn_log, bookname_log, readerid_log, readername_log,cardid_log,num)  SELECT tbl_book.isbn,tbl_book.book_name,tbl_reader.reader_id,tbl_reader.reader_name,tbl_reader.card_id,#{num} FROM tbl_reader INNER  JOIN tbl_book ON reader_id=#{readeridLog} WHERE isbn=#{isbnLog}")
    List<Borrow> addborrow(Borrow borrow);


}
