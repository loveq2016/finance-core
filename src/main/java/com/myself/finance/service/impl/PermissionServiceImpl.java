package com.myself.finance.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myself.common.utils.UIDGeneratorUtil;
import com.myself.finance.dao.IPermissionDao;
import com.myself.finance.entity.Permission;
import com.myself.finance.page.IPage;
import com.myself.finance.page.Page;
import com.myself.finance.param.PermissionQueryParam;
import com.myself.finance.service.IPermissionService;

@Service("permissionService")
public class PermissionServiceImpl implements IPermissionService {

	@Autowired
	private IPermissionDao permissionDao;
	
	public List<Permission> queryPermissionsByRoleId(String roleId) {
		return permissionDao.queryPermissionsByRoleId(roleId);
	}

	public int save(Permission param) {
		param.setId(UIDGeneratorUtil.getUID());
		param.setStatus("1");
		param.setCreateTime(new Date());
		return permissionDao.save(param);
	}

	public int update(Permission param) {
		return permissionDao.update(param);
	}

	public int delete(Permission param) {
		return permissionDao.delete(param);
	}

	public Permission getData(Permission param) {
		return permissionDao.getData(param);
	}

	public List<Permission> list(PermissionQueryParam param) {
		return permissionDao.list(param);
	}

	@Override
	public IPage<Permission> query(PermissionQueryParam param) {
		IPage<Permission> page = null;
		int count = permissionDao.count(param);
		if (count > 0) {
			int pageNo = (param.getPage() <= 0) ? 1 : param.getPage();
			int start = (pageNo - 1) * param.getLength();
			int end = param.getLength();
			List<Permission> list = permissionDao.query(param, start, end);
			page = new Page<Permission>(list, count, pageNo, end);
		} else {
			page = new Page<Permission>(new ArrayList<Permission>(), 0, 1, 1);
		}
		return page;
	}
}
