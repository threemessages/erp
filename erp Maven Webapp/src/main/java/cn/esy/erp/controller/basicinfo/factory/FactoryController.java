package cn.esy.erp.controller.basicinfo.factory;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.esy.erp.controller.BaseController;
import cn.esy.erp.domain.Factory;
import cn.esy.erp.service.FactoryService;

/**
 * 生产厂家
 * 
 * @description:
 * @author: TY
 * @company:
 * @createTime: Dec 18, 2015
 */
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

	@RequestMapping("/basicinfo/factory/toInsert.action")
	public String toInsert() {
		return "/basicinfo/factory/save.jsp";
	}

	@RequestMapping("/basicinfo/factory/insert.action")
	public String insert(Factory factory) {
		factoryService.insert(factory);
		return "redirect:/basicinfo/factory/list.action";
	}

	@RequestMapping("/basicinfo/factory/toUpdate.action")
	public String toUpdate(String id, Model model) {
		Factory obj = factoryService.get(id);
		model.addAttribute("obj", obj);
		return "/basicinfo/factory/save.jsp";
	}

	@RequestMapping("/basicinfo/factory/update.action")
	public String update(Factory factory) {
		factoryService.update(factory);
		return "redirect:/basicinfo/factory/list.action";
	}

	@RequestMapping("/basicinfo/factory/deleteById.action")
	public String deleteById(String id) {
		factoryService.deleteById(id);
		return "redirect:/basicinfo/factory/list.action";
	}

	@RequestMapping("/basicinfo/factory/delete.action")
	public String delete(@RequestParam("id") String[] ids) {
		factoryService.delete(ids);
		return "redirect:/basicinfo/factory/list.action";
	}

	@RequestMapping("/basicinfo/factory/toView.action")
	public String toView(String id, Model model) {
		Factory obj = factoryService.get(id);
		model.addAttribute("obj", obj);
		return "/basicinfo/factory/view.jsp";
	}

	@RequestMapping("/basicinfo/factory/enable.action")
	public String enable(@RequestParam("id") String[] ids) {
		factoryService.enable(ids);
		return "redirect:/basicinfo/factory/list.action";
	}

	@RequestMapping("/basicinfo/factory/disable.action")
	public String disable(@RequestParam("id") String[] ids) {
		factoryService.disable(ids);
		return "redirect:/basicinfo/factory/list.action";
	}
}
