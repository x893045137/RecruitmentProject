package com.chinasofti.service;

import org.springframework.stereotype.Component;

import com.chinasofti.model.Consumer;

/**
*@author 作者：周天子;
*
*version 创建时间：2017年7月18日下午6:13:09
*
*类说明:
*/

@Component
public interface UserService {
	
	Consumer selectByUsername(String username);

}
