package com.fpt.vnc.dn_thoidiemcungcapdulieu.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.fpt.vnc.dn_thoidiemcungcapdulieu.dto.DNThoiDiemCungCapDuLieuDTO;

public class DNThoiDiemCungCapDuLieuDAO {
	
	private SqlSessionFactory sqlSessionFactory = null;

	public DNThoiDiemCungCapDuLieuDAO(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	public List<DNThoiDiemCungCapDuLieuDTO> selectAll(){
        List<DNThoiDiemCungCapDuLieuDTO> list = null;
        SqlSession session = sqlSessionFactory.openSession();
 
        try {
            list = session.selectList("dnThoiDiemCungCapDuLieu_sql.selectAll");
        } finally {
            session.close();
        }
        return list;
    }
	
}
