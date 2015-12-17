package cn.esy.erp.dao.impl;

import org.springframework.stereotype.Repository;

import cn.esy.erp.dao.FactoryDao;
import cn.esy.erp.domain.Factory;

@Repository
public class FactoryDaoImpl extends BaseDaoImpl<Factory> implements FactoryDao {
	public FactoryDaoImpl() {
		super.setNs("cn.esy.erp.mapper.FactoryMapper");
	}
}
