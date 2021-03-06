package com.myself.finance.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.myself.finance.entity.Product;
import com.myself.finance.page.Page;
import com.myself.finance.param.ProductQueryParam;

public interface IProductMapper {

	int save(Product param);

	int update(Product param);

	int delete(Product param);

	Product getData(Product param);

	List<Product> query(Page<ProductQueryParam> param);

	int count(@Param("param") ProductQueryParam param);

	List<Product> query(@Param("param") ProductQueryParam param,
			@Param("start") int start, @Param("end") int end);
}
