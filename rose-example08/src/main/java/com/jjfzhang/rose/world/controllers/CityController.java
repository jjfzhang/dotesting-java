package com.jjfzhang.rose.world.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import net.paoding.rose.web.Invocation;

import com.jjfzhang.rose.world.model.City;
import com.jjfzhang.rose.world.service.CityImpl;

public class CityController {
	@Autowired
	private CityImpl cityImpl;
	
	public String all(Invocation inv) {
		List<City> data = cityImpl.getAll();
		inv.addModel("cityList", data);
		return "index";
	}
	
	public String test(Invocation inv) {
		int data = cityImpl.test();
		return "@" + data;
	}
}
