package com.jk.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import com.jk.model.Role;
import com.jk.util.PageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jk.model.Ren;

import com.jk.service.RenService;



@Controller
@RequestMapping("/ren")
public class RenController {

	@Resource
	private RenService renService;

	@ResponseBody
	@RequestMapping("/login")
	public String login(Ren ren, HttpSession session) {
		Ren rr  =  	renService.login(ren);
			// TODO Auto-generated catch block
		if (rr!=null) {
			session.setAttribute("rr", rr);
			return "ee";
		}else {
			return 	"userNo";
		}
	}
	@ResponseBody
	@RequestMapping("/addcharenlist")
	public   PageUtil  addcharenlist(Integer   page,Integer   rows ){
		PageUtil    pageUtil=new PageUtil();
		pageUtil.setPage(page);
		pageUtil.setPageSize(rows);
		pageUtil=renService.addcharenlist(pageUtil);
		return  pageUtil;
	}
	@ResponseBody
	@RequestMapping("/addcharolelist")
	public  List<Role>  addcharolelist(Integer  rid){
		List<Role> list=  renService.addcharolelist(rid);
		System.out.println(list);
		return list;
	}
	@ResponseBody
	@RequestMapping("/charolelist")
	public   List<Role>   charolelist(){
		List<Role> list =null;
		try {
			list = renService.charolelist();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	@ResponseBody
	@RequestMapping("/updaterolelist")
	public   String  updaterolelist(Ren  ren,String  roid){
		renService.updaterolelist(ren,roid);
		return "true";

	}
	@ResponseBody
	@RequestMapping("saverenlist")
	public   String   saverenlist(Ren  ren){
		renService.saverenlist(ren);
		return "true";
	}
	@ResponseBody
	@RequestMapping("deleterenlist")
	public  String  deleterenlist(String   ids){
		renService.deleterenlist(ids);
		return "true";
	}
}

