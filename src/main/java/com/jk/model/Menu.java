package com.jk.model;

import java.io.Serializable;
import java.util.List;

public class Menu implements Serializable {

	private static final long serialVersionUID = 3628300393936909247L;
	private Integer  id;
	
	private Integer  pid;
	
	private String  text;
	
	private String  href;
	
	private Boolean checked=false;
	
	private List<Menu>   children;

	public Boolean getChecked() {
		return checked;
	}

	public void setChecked(Boolean checked) {
		this.checked = checked;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	

	public String getHref() {
		return href;
	}

	public void setHref(String href) {
		this.href = href;
	}

	public List<Menu> getChildren() {
		return children;
	}

	public void setChildren(List<Menu> children) {
		this.children = children;
	}

	@Override
	public String toString() {
		return "Menu [id=" + id + ", pid=" + pid + ", text=" + text + ", href="
				+ href + ", checked=" + checked + ", children=" + children
				+ "]";
	}


	
	

}
