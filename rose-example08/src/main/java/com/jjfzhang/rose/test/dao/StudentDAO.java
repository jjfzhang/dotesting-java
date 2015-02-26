package com.jjfzhang.rose.test.dao;

import java.util.List;

import com.jjfzhang.rose.test.model.Student;
import com.xiaomi.bmw.jade.route.annotation.UseSlave;

import net.paoding.rose.jade.annotation.DAO;
import net.paoding.rose.jade.annotation.SQL;

@DAO(catalog = "mysqlsync")
public interface StudentDAO {
	@UseSlave
	@SQL("select * from test.student limit :1, :2")	
	public List<Student> getList(int pn, int size);
}
