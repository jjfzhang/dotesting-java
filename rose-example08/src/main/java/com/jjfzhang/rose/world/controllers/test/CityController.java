package com.jjfzhang.rose.world.controllers.test;

import java.util.HashMap;
import java.util.Map;

import net.paoding.rose.web.Invocation;
import net.paoding.rose.web.annotation.Path;
import net.sf.json.JSONObject;

import org.springframework.beans.factory.annotation.Autowired;

import com.jjfzhang.rose.world.service.CityImpl;

@Path("/dotest/city")
public class CityController {
	@Autowired
	private CityImpl cityImpl;
	
	public String test(Invocation inv) {
		 Map map = new HashMap();       
		 map.put( "name", "json" );       
		 map.put( "bool", Boolean.TRUE );       
		     
		 map.put( "int", new Integer(1) );       
		 map.put( "arr", new String[]{"a","b"} );      
		 
		 String strMap = JSONObject.fromObject(map).toString();
		 System.out.println(strMap);
		 
		 
//		 JSONObject strMapJson = JSONObject.fromObject(strMap);
//		 HashMap newMap = new HashMap();
//		 strMapJson.putAll(newMap);
//		 System.out.println(newMap.toString());

//		return "@" + newMap.toString();
		 return "@" + strMap;
	}
}
