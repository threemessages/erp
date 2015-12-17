package cn.esy.erp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value = "/main.action")
	public String fmain() {
		return "/home/main.jsp";
	}

	@RequestMapping(value = "/top.action")
	public String top() {
		return "/home/top.jsp";
	}

	@RequestMapping(value = "/left.action")
	public String left() {
		return "/home/left.jsp";
	}

	@RequestMapping(value = "/right.action")
	public String right() {
		return "/home/right.jsp";
	}

	// 系统管理模块
	@RequestMapping("/sysadminMain.action")
	public String sysadminMain() {
		return "/sysadmin/main.jsp";
	}

	@RequestMapping("/sysadminLeft.action")
	public String sysadminLeft() {
		return "/sysadmin/left.jsp";
	}

	// 基础信息模块

	@RequestMapping("/baseinfoMain.action")
	public String baseinfoMain() {
		return "/baseinfo/main.jsp";
	}

	@RequestMapping("/baseinfoLeft.action")
	public String baseinfoLeft() {
		return "/baseinfo/left.jsp";
	}

	// 货运管理模块

	@RequestMapping("/cargoMain.action")
	public String cargoMain() {
		return "/cargo/main.jsp";
	}

	@RequestMapping("/cargoLeft.action")
	public String cargoLeft() {
		return "/cargo/left.jsp";
	}
}
