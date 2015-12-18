package cn.esy.erp.service.impl;

import java.io.Serializable;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.esy.erp.dao.FactoryDao;
import cn.esy.erp.domain.Factory;
import cn.esy.erp.pagination.Page;
import cn.esy.erp.service.FactoryService;

@SuppressWarnings({ "rawtypes", "unchecked" })
@Service
public class FactoryServiceImpl implements FactoryService {

	@Autowired
	FactoryDao factoryDao;

	public List<Factory> findPage(Page page) {
		return null;
	}

	public List<Factory> find(Map paraMap) {
		return factoryDao.find(paraMap);
	}

	public Factory get(Serializable id) {
		return factoryDao.get(id);
	}

	public void insert(Factory entity) {
		entity.setId(UUID.randomUUID().toString());// 设置id
		entity.setCreateTime(new Date());
		entity.setStatus(1); // 默认启用
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

	public void enable(Serializable[] ids) {
		Map map = new HashMap();
		map.put("status", 1); // 为1时启用
		map.put("ids", ids);
		factoryDao.updateStatus(map);
	}

	public void disable(Serializable[] ids) {
		Map map = new HashMap();
		map.put("status", 0); // 为0时禁用
		map.put("ids", ids);
		factoryDao.updateStatus(map);
	}

}
