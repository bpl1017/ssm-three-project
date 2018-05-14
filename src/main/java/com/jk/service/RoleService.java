package com.jk.service;

import com.jk.model.Menu;
import com.jk.util.PageUtil;

import java.util.List;

/**
 * Created by new鹏 on 2018/5/2.
 */
public interface RoleService {
    PageUtil addcharolelist(PageUtil pageUtil);

    List<Menu> addcharolemenulist(Integer roid);

    List<Menu> addchamenulist();

    void deleterolelist(Integer roid);

    void saverolemenulist(int mid, Integer roid);
}
