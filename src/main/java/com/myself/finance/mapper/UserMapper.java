package com.myself.finance.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.myself.finance.entity.User;
import com.myself.finance.param.UserQueryParam;

public interface UserMapper {

	int save(User param);
	int update(User param);
	int delete(User param);
	User getData(User param);

	int count(@Param("param") UserQueryParam param);
	List<User> query(@Param("param") UserQueryParam param,
			@Param("start") int start, @Param("end") int end);
}
