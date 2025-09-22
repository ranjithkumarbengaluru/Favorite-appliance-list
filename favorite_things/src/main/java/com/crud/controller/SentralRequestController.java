package com.crud.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import com.crud.service.FavoriteThingsService;
import com.crud.entities.ThingsAttribute;

@Controller
public class SentralRequestController {

	@Autowired
	private FavoriteThingsService service;

	@RequestMapping("/home")
	public String getHome(Model model) {
		model.addAttribute("title", "Product CRUD Home");
		List<ThingsAttribute> list = service.getAllProducts();
		model.addAttribute("stdlist", list);
		return "home";
	}

	@RequestMapping("/additemform")
	public String addItemform(Model model) {
		model.addAttribute("title", "Add Product");
		return "additemform";
	}

	@RequestMapping(value = "/additemsubmit", method = RequestMethod.POST)
	public RedirectView addItem(@ModelAttribute ThingsAttribute item, HttpServletRequest request) {
		service.saveProduct(item);
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath() + "/home");
		return view;

	}

	@RequestMapping(value = "/updateproductsubmit", method = RequestMethod.POST)
	public RedirectView edititemform(@ModelAttribute ThingsAttribute item, HttpServletRequest request) {
		System.out.println(item);
		service.updateProduct(item);
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath() + "/home");
		return view;
	}

	@RequestMapping("/updateproduct/{id}")
	public String edititem(@PathVariable("id") int id, HttpServletRequest request, Model model) {
		ThingsAttribute item = service.getProduct(id);
		model.addAttribute("title", "Editz");
		model.addAttribute("item", item);
		return "edititem";
	}

	@RequestMapping("/deleteproduct/{id}")
	public RedirectView edititemform(@PathVariable("id") int id, HttpServletRequest request) {
		service.deleteProduct(id);
		RedirectView view = new RedirectView();
		view.setUrl(request.getContextPath() + "/home");
		return view;
	}

}
