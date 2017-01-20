package com.fpt.vnc.dn_nhomchitieu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.fpt.vnc.dn_nhomchitieu.dto.NhomChiTieuDTO;

public class NhomChiTieuDAO {
	
	private SqlSessionFactory sqlSessionFactory = null;

	public NhomChiTieuDAO(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public List<NhomChiTieuDTO> selectAll(){
        List<NhomChiTieuDTO> list = null;
        SqlSession session = sqlSessionFactory.openSession();
 
        try {
            list = session.selectList("dinhnghianhomchitieu_sql.selectAll");
        } finally {
            session.close();
        }
        return list;
    }
	
}
