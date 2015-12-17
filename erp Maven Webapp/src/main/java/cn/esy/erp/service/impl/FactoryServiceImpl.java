package cn.esy.erp.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.esy.erp.dao.FactoryDao;
import cn.esy.erp.domain.Factory;
import cn.esy.erp.pagination.Page;
import cn.esy.erp.service.FactoryService;

@SuppressWarnings("rawtypes")
@Service
public class FactoryServiceImpl implements FactoryService {

	@Autowired
	FactoryDao factoryDao;

	public List<Factory> findPage(Page page) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Factory> find(Map paraMap) {
		return factoryDao.find(paraMap);
	}

	public Factory get(Serializable id) {
		return factoryDao.get(id);
	}

	public void insert(Factory entity) {
		factoryDao.insert(entity);
	}

	public void update(Factory entity) {
		factoryDao.update(entity);
	}

	public void deleteById(Serializable id) {
		factoryDao.deleteById(id);
	}

	public void delete(Serializable[] ids) {
		factoryDao.delete(ids);
	}

}
