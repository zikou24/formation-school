package Controlle;


import java.net.http.HttpRequest;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.boot.autoconfigure.kafka.KafkaProperties.Admin;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Metier.User;
import Metier.appr;
import Metier.etab;
import Metier.formateur;
import Metier.offress;
import Metier.userOperation;
import Metier.ConnexionBase;



@Controller






public class formationcontroller {
	
	
	@GetMapping("/indexfor")
	public String formateurepacesss() {return "/WEB-INF/Views/indexformation.jsp";}
	@PostMapping("/indexfor")
	public String formateuresp() {return "/WEB-INF/Views/indexformation.jsp";}
	
	
	

	@GetMapping("/france")
	public String formateurepa() {return "/WEB-INF/Views/france.jsp";}
	@PostMapping("/france")
	public String formateure() {return "/WEB-INF/Views/france.jsp";}
	
	
	

	@GetMapping("/english")
	public String formateur() {return "/WEB-INF/Views/english.jsp";}
	@PostMapping("/english")
	public String formateu() {return "/WEB-INF/Views/english.jsp";}
	
	
	
	
	

	@GetMapping("/russia")
	public String formateurfff() {return "/WEB-INF/Views/russia.jsp";}
	@PostMapping("/russia")
	public String formateuffff() {return "/WEB-INF/Views/russia.jsp";}
	
	
	
	@GetMapping("/espagnol")
	public String formateurfffff() {return "/WEB-INF/Views/espagnol.jsp";}
	@PostMapping("/espagnol")
	public String formateuffffddd() {return "/WEB-INF/Views/espagnol.jsp";}
	
	

	@GetMapping("/informatique")
	public String formationn() {return "/WEB-INF/Views/formationinfo.jsp";}
	@PostMapping("/informatique")
	public String formatin() {return "/WEB-INF/Views/indexformationinfo.jsp";}
	
	
	@GetMapping("/C")
	public String formationnn() {return "/WEB-INF/Views/Cformation.jsp";}
	@PostMapping("/C")
	public String formatinn() {return "/WEB-INF/Views/Cformation.jsp";}
	
	
	@GetMapping("/java")
	public String formationnnnn() {return "/WEB-INF/Views/javaformation.jsp";}
	@PostMapping("/java")
	public String formatinnnn() {return "/WEB-INF/Views/javaformation.jsp";}
	

	@GetMapping("/backtofor")
	public String formationnnnnv() {return "/WEB-INF/Views/formationinfo.jsp";}
	@PostMapping("/backtofor")
	public String formatinnnnv() {return "/WEB-INF/Views/formationinfo.jsp";}
	
	
	@GetMapping("/backtolang")
	public String formationnnnnvv() {return "/WEB-INF/Views/indexformation.jsp";}
	@PostMapping("/backtolang")
	public String formatinnnnvv() {return "/WEB-INF/Views/indexformation.jsp";}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
