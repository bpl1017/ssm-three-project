package com.jk.model;

import java.io.Serializable;

public class Role implements Serializable {
    private static final long serialVersionUID = -1502174912899920006L;
    private Integer roid;

    private String roname;

    public Integer getRoid() {
        return roid;
    }

    public void setRoid(Integer roid) {
        this.roid = roid;
    }

    public String getRoname() {
        return roname;
    }

    public void setRoname(String roname) {
        this.roname = roname == null ? null : roname.trim();
    }
}