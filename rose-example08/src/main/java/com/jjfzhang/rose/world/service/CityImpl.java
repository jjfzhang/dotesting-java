package com.jjfzhang.rose.world.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jjfzhang.rose.world.dao.CityDAO;
import com.jjfzhang.rose.world.model.City;

@Service
public class CityImpl {
	@Autowired
	private CityDAO cityDAO;
	
	public List<City> getAll() {
		List<City> ret = new ArrayList<City>();
		for(int pn = 0, size = 500; ; pn++) {
			List<City> res = cityDAO.getList(pn, size);
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
	
	public int test() {
		City city = new City();
		city.setId(2);
		city.setName("xiaomi");
		return cityDAO.updateCity(city);
	}
}
