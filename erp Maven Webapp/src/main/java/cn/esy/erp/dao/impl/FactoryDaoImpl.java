package cn.esy.erp.dao.impl;

import java.util.Map;

import org.springframework.stereotype.Repository;

import cn.esy.erp.dao.FactoryDao;
import cn.esy.erp.domain.Factory;

@SuppressWarnings("rawtypes")
@Repository
public class FactoryDaoImpl extends BaseDaoImpl<Factory> implements FactoryDao {
	public FactoryDaoImpl() {
		super.setNs("cn.esy.erp.mapper.FactoryMapper");
	}

	// 修改状态
	public void updateStatus(Map map) {
		super.getSqlSession().update(super.getNs() + ".updateStatus", map);
	}
}
