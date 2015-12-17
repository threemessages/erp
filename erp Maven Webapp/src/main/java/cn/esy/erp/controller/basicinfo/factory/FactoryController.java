package cn.esy.erp.controller.basicinfo.factory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.esy.erp.controller.BaseController;
import cn.esy.erp.domain.Factory;
import cn.esy.erp.service.FactoryService;

@Controller
public class FactoryController extends BaseController {
	@Autowired
	FactoryService factoryService;

	@RequestMapping("/basicinfo/factory/list.action")
	public String list(Model model) {
		List<Factory> dataList = factoryService.find(null);
		model.addAttribute("dataList", dataList);

		return "/basicinfo/factory/list.jsp";
	}

}
