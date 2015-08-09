package com.myself.finance.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.BaseDao;
import com.myself.finance.dao.IRoleDao;
import com.myself.finance.entity.Role;
import com.myself.finance.mapper.IRoleMapper;
import com.myself.finance.page.Page;
import com.myself.finance.param.RoleQueryParam;

@Repository
public class RoleDaoImpl extends BaseDao<IRoleMapper> implements IRoleDao {

	public List<Role> queryRolesByUserId(String userId) {
		IRoleMapper mapper = getMapper(IRoleMapper.class);
		return mapper.queryRolesByUserId(userId);
	}

	public int save(Role param) {
		IRoleMapper mapper = getMapper(IRoleMapper.class);
		return mapper.save(param);
	}

	public int update(Role param) {
		IRoleMapper mapper = getMapper(IRoleMapper.class);
		return mapper.update(param);
	}

	public int delete(Role param) {
		IRoleMapper mapper = getMapper(IRoleMapper.class);
		return mapper.delete(param);
	}

	public Role getData(Role param) {
		IRoleMapper mapper = getMapper(IRoleMapper.class);
		return mapper.getData(param);
	}

	public List<Role> list(Page<RoleQueryParam> param) {
		IRoleMapper mapper = getMapper(IRoleMapper.class);
		return mapper.query(param);
	}

}
