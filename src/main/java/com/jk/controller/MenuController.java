package com.jk.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk.model.Menu;
import com.jk.model.Ren;
import com.jk.service.MenuService;

@Controller
@RequestMapping("/menu")
public class MenuController {
     
	@Resource
	private    MenuService    menuService;
	
	@ResponseBody
	@RequestMapping("/menulist")
	public    List<Menu>  menulist(HttpSession  session){
	   Set<String> resources = new HashSet<String>();
		Ren rr = (Ren) session.getAttribute("rr");
		  List<Menu>   listMenu  =	menuService.menulist(rr.getRid());
		for (int i = 0; i < listMenu.size(); i++) {
			if (listMenu.get(i).getHref()!=null&&!"".equals(listMenu.get(i).getHref())) {
				resources.add(listMenu.get(i).getHref());
			}
		}
		   return   listMenu;
	}

}
