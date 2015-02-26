package com.jjfzhang.rose.world.dao;

import java.util.List;

import com.jjfzhang.rose.world.model.City;
import com.xiaomi.bmw.jade.route.annotation.UseSlave;

import net.paoding.rose.jade.annotation.DAO;
import net.paoding.rose.jade.annotation.SQL;
import net.paoding.rose.jade.annotation.UseMaster;

@DAO(catalog = "mysqlsync")
public interface CityDAO {
	@UseSlave
	@SQL("select * from world.city limit :1, :2")	
	public List<City> getList(int pn, int size);
	
	@UseSlave
	@SQL("select * from world.city where id in (:1) limit :2, :3")
	public List<City> getListById(int[] idList, int pn, int size);
	
	@UseMaster
	@SQL("update world.city set name=:1.name where id=:1.id")
	public int updateCity(City city);
}
