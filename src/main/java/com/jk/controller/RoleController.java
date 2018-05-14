package com.jk.controller;

import java.util.List;

import javax.annotation.Resource;

import com.jk.model.Menu;
import com.jk.service.RoleService;
import com.jk.util.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/role")
public class RoleController {
       
	@Resource
	private RoleService roleService;
	
	@ResponseBody
	@RequestMapping("/addcharolelist")
	public   PageUtil  addcharolelist(Integer   page,Integer   rows){
		    PageUtil    pageUtil=new PageUtil();
		    pageUtil.setPage(page);
			pageUtil.setPageSize(rows);
		try {
			pageUtil=roleService.addcharolelist(pageUtil);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return  pageUtil;
	}
	@ResponseBody
	@RequestMapping("/addchamenulist")
	public   List<Menu>  addchamenulist(Integer   roid){
	  List<Menu>   list1= 	roleService.addcharolemenulist(roid);
	  List<Menu>   list2=   roleService.addchamenulist();
	   for (Menu menu : list2) {
		  for (Menu menu1 : list1) {
			if (menu.getId()==menu1.getId()) {
				menu.setChecked(true);
			}
		}
	}
		return list2;
	}
	
	@ResponseBody
	@RequestMapping("/updaterolemenulist")
	public   String   updaterolemenulist(String  ids,Integer roid){
		roleService.deleterolelist(roid);
		String[] arr = 	ids.split(",");
		for (int i = 0; i < arr.length; i++) {
			roleService.saverolemenulist(Integer.parseInt(arr[i]),roid);
		}
		return "true";
	}
}
