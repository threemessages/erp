package cn.esy.erp.dao;

import java.util.Map;

import cn.esy.erp.domain.Factory;

/**
 * 
 * @description:
 * @author: TY
 * @company:
 * @createTime: Dec 18, 2015
 */
@SuppressWarnings("rawtypes")
public interface FactoryDao extends BaseDao<Factory> {
	public void updateStatus(Map map); // 修改状态
}
