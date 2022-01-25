package Controlle;

import java.util.ArrayList;

		

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import Metier.appr;
import Metier.etab;
import Metier.formateur;
import Metier.formation;
import Metier.offress;
import Metier.userOperation;

@Controller
public class insrip {
	@Autowired
 	private JavaMailSender mailsender;
	@GetMapping("/test")
	public String wassim(@RequestParam int id ) {
		SimpleMailMessage message = new SimpleMailMessage();
		userOperation formemail = new userOperation();
		
		
		
		
 		message.setFrom("zikoubouregbi@gmail.com");
 		message.setTo(formemail.getidemail(id));
 		String mailSubject = "Welcome With Us";
 		String mailContent = "zakaria wilcome to our site web";
 		message.setSubject(mailSubject);
 		message.setText(mailContent);
 		mailsender.send(message);
 		return"/espaceadmin";
 		
 		
	}
	//email formateur
	
	
	
	
	
	
	@Autowired
 	private JavaMailSender mailsender1;
	@GetMapping("/testformateur")
	public String zaki(@RequestParam int id ) {
		SimpleMailMessage message = new SimpleMailMessage();
		userOperation formemaill = new userOperation();
		
		
		
		
 		message.setFrom("zikoubouregbi@gmail.com");
 		message.setTo(formemaill.getidemailform(id));
 		String mailSubject = "Welcome With Us";
 		String mailContent = "formateur  zaki est full stuck devlopper";
 		message.setSubject(mailSubject);
 		message.setText(mailContent);
 		mailsender1.send(message);
 		return"/espaceformateur";
 		
 		
	}
	
	
	
	//email accepte formation
	
	@Autowired
 	private JavaMailSender mailsender2;
	@GetMapping("/testformation")
	public String zikou(@RequestParam int id ) {
		SimpleMailMessage message = new SimpleMailMessage();
		userOperation formemail = new userOperation();
		
		
		
		
 		message.setFrom("zikoubouregbi@gmail.com");
 		message.setTo(formemail.getidemail(id));
 		String mailSubject = "  welcome With Us to formation ";
 		String mailContent = "yoour request for study formation is approuved";
 		message.setSubject(mailSubject);
 		message.setText(mailContent);
 		mailsender2.send(message);
 		return"/listedemandesfomation";
 		
 		
	}
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	 private appr app;




	@RequestMapping(value = "/Signup", method = RequestMethod.GET)
	    public ModelAndView showFormemployeur() {
	        return new ModelAndView("/WEB-INF/Views/registre.jsp", "user", new etab());
	    }
		 @RequestMapping(value = "/Signup", method = RequestMethod.POST)
	    public ModelAndView showFormemployeurp() {
	        return new ModelAndView("/WEB-INF/Views/registre.jsp", "user", new etab());}
		 @RequestMapping(value = "/addd", method = RequestMethod.POST)
		public String submitemployeur(@ModelAttribute("user") etab  user, Model model,HttpServletRequest request) {
			 userOperation a=new userOperation();
			 System.out.println(user.getNom());
			 
			 System.out.println(user.getPassword());
			 
			 a.addetab(user);
			 return "/ontastymeal";
			 
	}
		 
		 
		 
		 
		 
	//apprennat
		 @RequestMapping(value = "/registe", method = RequestMethod.GET)
		    public ModelAndView showFormapprennat() {
		        return new ModelAndView("/WEB-INF/Views/registreapprennant.jsp", "user", new appr());
		    }
			 @RequestMapping(value = "/registre", method = RequestMethod.POST)
		    public ModelAndView showFormapprennant() {
		        return new ModelAndView("/WEB-INF/Views/registre.jsp", "user", new appr());}
			 @RequestMapping(value = "/adappr", method = RequestMethod.POST)
			public String submitemployeur(@ModelAttribute("app") appr  app, Model model,HttpServletRequest request) {
				userOperation a=new userOperation();
				 System.out.println(app.getNom());
				 
				 System.out.println(app.getPassword());
				 
				 a.addappr(app);
				 return "/ontastymeal";
				 
		}
			 
			 
		 
		 
		 @GetMapping("/registre")
		 public String adminespace() {return "/WEB-INF/Views/registreapprennant.jsp";}
		 
		 
		 
		 
		 //registre formateur
		 
		 
		 
		 
		 
		
		 @RequestMapping(value = "/registreformateur", method = RequestMethod.GET)
		    public ModelAndView showFormaformateurss() {
		        return new ModelAndView("/WEB-INF/Views/registreformateur.jsp", "formateur", new formateur());
		    }
			 @RequestMapping(value = "/registreformateur", method = RequestMethod.POST)
		    public ModelAndView showFormaateurss() {
		        return new ModelAndView("/WEB-INF/Views/registreformateur.jsp", "formateur", new formateur());}
			 @RequestMapping(value = "/adforma", method = RequestMethod.POST)
			public String submitformateur(@ModelAttribute("forma") formateur  forma, Model model,HttpServletRequest request) {
				userOperation f=new userOperation();
				
				 System.out.println(forma.getSex());
				 
				 System.out.println(forma.getPassword());
				 
				 f.addformateur(forma);
				 return "/ontastymeal";
		}
			 
			 
			 
		 
		 
		/*@GetMapping("/registreformateur")
		 public String formateurespace() {return "/WEB-INF/Views/registreformateur.jsp";}*/

		 

		 
		 
		 // list apprennat

@GetMapping("/espaceadmin")
public String listeroffre(Model model) {
	userOperation appr = new userOperation();
	List<appr> list1 = new ArrayList<appr>();
	list1 = appr.list_apprenant();
	model.addAttribute("list",list1);
	System.out.println(list1.size());
	return "WEB-INF/Views/indexadminapprenant.jsp";
	
}




@PostMapping("/espaceadmin")
public String listeroffrep(Model model) {
	userOperation appr = new userOperation();
	List<appr> list1 = new ArrayList<appr>();
	list1 = appr.list_apprenant();
	model.addAttribute("list",list1);
	System.out.println(list1.size());
	return "WEB-INF/Views/indexadminapprenant.jsp";
	
	
}

//listformation



@GetMapping("/listformation")
public String listerformation(Model model) {
	userOperation formation = new userOperation();
	List<formation> list4 = new ArrayList<formation>();
	list4 = formation.list_formation();
	model.addAttribute("list",list4);
	System.out.println(list4.size());
	return "WEB-INF/Views/listeformation.jsp";
	
}




@PostMapping("/listformation")
public String listeroffrepdd(Model model) {
	userOperation formation = new userOperation();
	List<formation> list4 = new ArrayList<formation>();
	list4 = formation.list_formation();
	model.addAttribute("list",list4);
	System.out.println(list4.size());
	return "WEB-INF/Views/listeformation.jsp";
	
	
}








@GetMapping("/supprimerappr")
public String supprimeroffre(@RequestParam int id) {
	userOperation apprennaant = new userOperation();
	apprennaant.Supprimerappr(id);
	
	/*admin.SupprimerDemandeDoffre(id);*/

	return "/espaceadmin";
	

	
	
	
	
}

		 
	



@GetMapping("/modifierappr")
public ModelAndView modifierappr(@RequestParam int id) {
	userOperation x = new userOperation();
	appr appr = x.get_Appr(id);
	ModelAndView model = new ModelAndView("/WEB-INF/Views/modifierapprennant.jsp");
	

	model.addObject("appr",appr);
	return model;
}


@PostMapping("modappr")
public String addappr(@ModelAttribute appr x ) {
	userOperation y = new userOperation();
	y.ModAppr(x); 
	return "/espaceadmin";
	
	
	
	
	
}



//modifier info from apprennat espace


@GetMapping("/modifierapprennat")
public ModelAndView modifierapprennat(@RequestParam int id) {
userOperation x = new userOperation();
appr appr = x.get_Appr(id);
ModelAndView model = new ModelAndView("/WEB-INF/Views/modifierinfoappr.jsp");



model.addObject("appr",appr);
return model;
}


@PostMapping("modeappr")
public String addapprennat(@ModelAttribute appr g ) {
userOperation y = new userOperation();
y.ModAppr(g); 
return "/espaceappr";



}
//modifier info  etab



@GetMapping("/modifieretab")
public ModelAndView modifieretab(@RequestParam int id) {
userOperation x = new userOperation();
etab etab = x.get_etab(id);
ModelAndView model = new ModelAndView("/WEB-INF/Views/modifierinfoetab.jsp");



model.addObject("etab",etab);
return model;
}


@PostMapping("modetab")
public String addetab(@ModelAttribute etab g ) {
userOperation y = new userOperation();
y.Modetab(g); 
return "/adminespace";



}




//modifier info formateur

@GetMapping("/modifierformateur")
public ModelAndView modifierformatuer(@RequestParam int id) {
userOperation x = new userOperation();
formateur formateur = x.get_formateur(id);
ModelAndView model = new ModelAndView("/WEB-INF/Views/modifierinfoformateur.jsp");



model.addObject("formateur",formateur);
return model;
}


@PostMapping("modformateur")
public String addapprennat(@ModelAttribute formateur g ) {
userOperation y = new userOperation();
y.Modformateur(g); 
return "/espaceform";



}




















@GetMapping("/descappr")
public String desappr(@RequestParam int id) {
	userOperation apprennaantt = new userOperation();
	apprennaantt.Supprimerappr(id);
	
	

	return "/athentificationapprennants";
	
	
}





//formateur list 

@GetMapping("/espaceformateur")
public String listeformateur(Model model) {
	userOperation formateur = new userOperation();
	List<formateur> list = new ArrayList<formateur>();
	list = formateur.list_fomateur();
	model.addAttribute("list",list);

	
	return "WEB-INF/Views/indexadminformateur.jsp";
	
}




@PostMapping("/espaceformateur")
public String listformateur(Model model) {
	userOperation formateur = new userOperation();
	List<formateur> list = new ArrayList<formateur>();
	list = formateur.list_fomateur();
	model.addAttribute("list",list);
	
	return "WEB-INF/Views/indexadminformateur.jsp";


	
	
	
}






@GetMapping("/supprimerformateur")
public String supprimerformateur(@RequestParam int id) {
	userOperation formateur = new userOperation();
	formateur.Supprimerformateur(id);
	
	/*admin.SupprimerDemandeDoffre(id);*/

	return "/espaceformateur";
	
	
	
}


//etablist
@GetMapping("/espaceetab")
public String listeretab(Model model) {
	userOperation etab = new userOperation();
	List<etab> list3 = new ArrayList<etab>();
	list3 = etab.list_etab();
	model.addAttribute("list",list3);
	System.out.println(list3.size());
	return "WEB-INF/Views/indexadminetab.jsp";
	
}




@PostMapping("/espaceetab")
public String listereetab(Model model) {
	userOperation etab = new userOperation();
	List<etab> list3 = new ArrayList<etab>();
	list3 = etab.list_etab();
	model.addAttribute("list",list3);
	System.out.println(list3.size());
	return "WEB-INF/Views/indexadminetab.jsp";
	
	
}


@GetMapping("/supprimeretab")
public String supprimeretab(@RequestParam int id) {
	userOperation etab = new userOperation();
	etab.Supprimeretab(id);
	
	/*admin.SupprimerDemandeDoffre(id);*/

	return "/espaceetab";
	


	
	
}





}


