package com.jjfzhang.rose.test.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jjfzhang.rose.test.dao.StudentDAO;
import com.jjfzhang.rose.test.model.Student;

@Service
public class StudentImpl {
	@Autowired
	private StudentDAO studentDAO;
	
	public List<Student> getAll() {
		List<Student> ret = new ArrayList<Student>();
		for(int pn = 0, size = 500; ; pn++) {
			List<Student> res = studentDAO.getList(pn, size);
			if(null == res) {
				break;
			}
			ret.addAll(res);
			
			if(size != res.size()) {
				break;
			}
		}
		return ret;
	}
}
