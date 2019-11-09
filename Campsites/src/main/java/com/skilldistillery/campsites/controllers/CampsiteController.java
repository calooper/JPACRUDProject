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

//		model.addAttribute("campsite", campsite);
//	
//		mv.addObject("films", films);
//		mv.setViewName("WEB-INF/film/show.jsp");

		return "WEB-INF/index.jsp";

	}

	@RequestMapping(path = "getCampsite.do", method = RequestMethod.GET)
	public ModelAndView getCampsite(@RequestParam("cid") int cid) {
		ModelAndView mv = new ModelAndView();

		Campsite campsite = campsiteDAO.findById(cid);

		mv.addObject("campsite", campsite);
		mv.setViewName("WEB-INF/campsite/show.jsp");
		return mv;
	}

	@RequestMapping(path = "getAllCampsites.do", method = RequestMethod.GET)
	public String getAllCampsites(Model model) {
		ModelAndView mv = new ModelAndView();
		List<Campsite> campsiteList;

//		model.addAttribute("campsiteList", campsiteList);

		campsiteList = campsiteDAO.getAllCampsites();

		model.addAttribute("campsiteList", campsiteList);

//		System.out.println(campsiteList);
//		mv.addObject("campsiteList", campsiteList);
//		mv.setViewName("WEB-INF/campsite/show.jsp");
		for (Campsite campsite : campsiteList) {
			System.out.println(campsite);
			System.out.println("hello");
		}
		
		return "WEB-INF/campsite/showAll.jsp";
	}

	@RequestMapping(path = "deleteFilm.do", method = RequestMethod.GET)
	public ModelAndView deleteCampsite(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
//		List<Campsite> campsiteList;

//		model.addAttribute("campsiteList", campsiteList);
		boolean result;

		result = campsiteDAO.deleteCampsite(id);
		mv.addObject("result", result);
		mv.setViewName("WEB-INF/campsite/show.jsp");
		return mv;
	}

	@RequestMapping(path = "addcampsite.do", method = RequestMethod.GET)
	public String addCampsite() {

//		model.addAttribute("campsite", campsite);
//	
//		mv.addObject("films", films);
//		mv.setViewName("WEB-INF/film/show.jsp");

		return "WEB-INF/addcampsite.jsp";

	}

}
