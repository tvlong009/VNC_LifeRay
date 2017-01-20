package com.fpt.vnc.ds_trangthai.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.fpt.vnc.ds_trangthai.dto.TrangThaiDTO;

public class TrangThaiDAO {
	
	private SqlSessionFactory sqlSessionFactory = null;

	public TrangThaiDAO(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public List<TrangThaiDTO> selectAll(){
        List<TrangThaiDTO> list = null;
        SqlSession session = sqlSessionFactory.openSession();
 
        try {
            list = session.selectList("trangthai_sql.selectAll");
        } finally {
            session.close();
        }
        return list;
    }
	
}
