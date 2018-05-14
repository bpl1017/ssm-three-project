package com.jk.service;


import java.util.List;

import com.jk.model.Ren;
import com.jk.model.Role;
import com.jk.util.PageUtil;


public interface RenService {

	/***
	 * 登录
	 * @param ren
	 * @return
	 */
	Ren login(Ren ren);

	/**
	 * 查询用户数据
	 * @param pageUtil
	 * @return
	 */
	PageUtil addcharenlist(PageUtil pageUtil);

	/**
	 * 查询用户
	 * @param rid
	 * @return
	 */
	List<Role> addcharolelist(Integer rid);

	List<Role> charolelist();

	void updaterolelist(Ren ren, String roid);

	/**
	 * 新增用户
	 * @param ren
	 */
	void saverenlist(Ren ren);

	/**
	 * 删除用户
	 * @param ids
	 */
	void deleterenlist(String ids);


}
