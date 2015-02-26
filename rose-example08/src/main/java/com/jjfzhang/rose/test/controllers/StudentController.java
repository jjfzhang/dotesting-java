package com.jjfzhang.rose.test.controllers;

import java.util.List;

import net.paoding.rose.web.Invocation;

import org.springframework.beans.factory.annotation.Autowired;

import com.jjfzhang.rose.test.model.Student;
import com.jjfzhang.rose.test.service.StudentImpl;

public class StudentController {
	@Autowired
	private StudentImpl studentImpl;
	
	public String all(Invocation inv) {
		List<Student> data = studentImpl.getAll();
		inv.addModel("studentList", data);
		return "student-all";
	}
}
