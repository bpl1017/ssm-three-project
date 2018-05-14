package com.jk.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class Ren  implements Serializable {

    private static final long serialVersionUID = -8217357064645467565L;
    private Integer rid;

    private String rname;

    private String rpass;

    private Integer rtype;
    private Set<String> resources = new HashSet<String>();
    
    public Set<String> getResources() {
		return resources;
	}

	public void setResources(Set<String> resources) {
		this.resources = resources;
	}

	public Integer getRid() {
        return rid;
    }

    public void setRid(Integer rid) {
        this.rid = rid;
    }

    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname == null ? null : rname.trim();
    }

    public String getRpass() {
        return rpass;
    }

    public void setRpass(String rpass) {
        this.rpass = rpass == null ? null : rpass.trim();
    }

    public Integer getRtype() {
        return rtype;
    }

    public void setRtype(Integer rtype) {
        this.rtype = rtype;
    }

	@Override
	public String toString() {
		return "Ren [rid=" + rid + ", rname=" + rname + ", rpass=" + rpass
				+ ", rtype=" + rtype + "]";
	}
    
}