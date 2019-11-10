package com.skilldistillery.campsites.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.campsites.data.CampsiteDAO;
import com.skilldistillery.campsites.entities.Campsite;

@Controller
public class CampsiteController {

	@Autowired
	private CampsiteDAO campsiteDAO;

	@RequestMapping(path = "/", method = RequestMethod.GET)
	public String index(Model model) {

		System.out.println("in start controller method");
		return "getAllCampsites.do";

	}

	@RequestMapping(path = "getAllCampsites.do", method = RequestMethod.GET)
	public String getAllCampsites(Model model) {
		List<Campsite> campsiteList;

		System.out.println("in get all");
		campsiteList = campsiteDAO.getAllCampsites();
		model.addAttribute("campsiteList", campsiteList);

		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "getCampsite.do", method = RequestMethod.GET)
	public ModelAndView getCampsite(@RequestParam("cid") int cid) {
		ModelAndView mv = new ModelAndView();

		Campsite campsite = campsiteDAO.findById(cid);

		System.out.println("in get");
		mv.addObject("campsite", campsite);
		mv.setViewName("WEB-INF/campsite/show.jsp");
		return mv;
	}

	@RequestMapping(path = "deleteCampsite.do", method = RequestMethod.GET)
	public String deleteCampsite(@RequestParam("id") int id, Model model) {
		List<Campsite> campsiteList;

		System.out.println("in delete 666666");
		boolean result = campsiteDAO.deleteCampsite(id);

		campsiteList = campsiteDAO.getAllCampsites();
		model.addAttribute("campsiteList", campsiteList);

		return "WEB-INF/index.jsp";
	}

	@RequestMapping(path = "addCampsite.do", method = RequestMethod.POST)
	public String addCampsite(@RequestParam String description, String state, String mountainRange, String latitude,
			String longitude, Model model) {

		double latitudeD = Double.parseDouble(latitude);
		double longitudeD = Double.parseDouble(latitude);

		Campsite newCampSite = campsiteDAO.addCampsite(description, state, latitudeD, longitudeD, mountainRange);

		List<Campsite> campsiteList;
		campsiteList = campsiteDAO.getAllCampsites();
		model.addAttribute("campsiteList", campsiteList);

		return "WEB-INF/index.jsp";

	}

	@RequestMapping(path = "index.do", method = RequestMethod.GET)
	public String home(Model model) {
		List<Campsite> campsiteList;
		campsiteList = campsiteDAO.getAllCampsites();
		model.addAttribute("campsiteList", campsiteList);

		return "WEB-INF/index.jsp";

	}

	@RequestMapping(path = "editCampsite.do", method = RequestMethod.GET)
	public String editCampsiteRedirect(@RequestParam int id, String description, String state, String mountainRange,
			Model model) {
		List<Campsite> campsiteList;

		System.out.println("in edit redirect");

//		Campsite campsiteToBeEdited = campsiteDAO.findById(id);
		campsiteDAO.editCampsite(id, description, state, mountainRange);
		campsiteList = campsiteDAO.getAllCampsites();

		model.addAttribute("campsiteList", campsiteList);

		return "WEB-INF/index.jsp";

	}

}
