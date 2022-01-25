package Controlle;





import java.io.IOException;




import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.kafka.KafkaProperties.Admin;
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

import Metier.User;
import Metier.appr;
import Metier.demande;
import Metier.demande_formation;
import Metier.etab;
import Metier.formateur;
import Metier.formation;
import Metier.offress;
import Metier.userOperation;
import Metier.ConnexionBase;



@Controller

public class LoginController {

	
@GetMapping("/ontastymeal")
	
	

	public String Show4() {

	return "WEB-INF/Views/IndexTastyMeal.jsp";		
	}
@PostMapping("/ontastymeal")



public String Show4ss() {

return "WEB-INF/Views/IndexTastyMeal.jsp";		
}

/*@GetMapping("/admin")


public String espaceadmin() {

	return "WEB-INF/Views/admin.jsp";		
	
}


@PostMapping("/admin")


public String espaceadmine() {

	return "WEB-INF/Views/admin.jsp";		
	
}

@GetMapping("/espaceadmin")


public String espaceapprennant() {
	return "WEB-INF/Views/indexadminapprenant.jsp";		


}*/
@GetMapping("/modifierformation")


public String modifierformateur() {
	
	return "WEB-INF/Views/modifierformation.jsp";		

}
/*
@GetMapping("/espaceformation")


public String espaceformation() {
	return "WEB-INF/Views/indexadminformation.jsp";		


}*/
/*@GetMapping("/etablogin")


public String Show5() {
	return "WEB-INF/Views/Athentificationetab.jsp";		


}*/

/*@GetMapping("/athentificationformateur")


public String atheformateur() {
	
	
	return "WEB-INF/Views/Athentificationformateur.jsp";		


}*/
/*
@GetMapping("/athentificationapprennants")


public String atheapprennant() {
	
	return "WEB-INF/Views/Athentificationapprennant.jsp";		


	
}

*/



@GetMapping("/homepage")


public String Show122() {
	return "WEB-INF/Views/IndexTastyMeal.jsp";		


}
/*@GetMapping("/registre")


public String Show123() {
	return "WEB-INF/Views/registre.jsp";		


}*/

/*@GetMapping("/espaceetab")


public String Showprofiletabl() {
	
	
	return "WEB-INF/Views/espaceetebl.jsp";		


}*/








/*@GetMapping("/espaceformateur")


public String Showadminformateur() {
	return "WEB-INF/Views/indexadminformateur.jsp";		



}*/


/*
@GetMapping("/modifierformateur")


public String Showmodifierformateur() {
	return "WEB-INF/Views/modifierformateur.jsp";		



}*/



/*@GetMapping("/addapprennat")


public String modifierapprennat() {
	return "WEB-INF/Views/modifierapprennant.jsp";		


}*/

/*@GetMapping("/athenadmin")


public String athentificadmin() {
	return "WEB-INF/Views/athentificationadmin.jsp";		


}*/









/*@RequestMapping(path="/adminlogin",method=RequestMethod.POST)


public void handleforme(@ModelAttribute User User,Model model,HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException { 

    

	   String username =request.getParameter("username"); 

	   String passWord =request.getParameter("password"); 

	  User user = new User();
      
	  user.setUserName(username); 

	   user.setPassword(passWord);
	    

	   userOperation z = new userOperation(); 
	   


	   boolean isUvalide = z.authentify(user); 
	   System.out.println(isUvalide);

	   if(isUvalide) { 

		   HttpSession session1 = request.getSession(); 

		   session1.setAttribute("userName", username);
			String email = user.getUserName();
			session1.setAttribute("loginadmin",email);
		   response.sendRedirect("/admin"); }
		   else {
			   response.sendRedirect("/athenadmin"); 
		   
			   
		   

		   
	   }
	   
}*/


//acceptedemandeoffre



@Autowired
	private JavaMailSender mailsender3;
@GetMapping("/acceptedemande")
public String zaaaki(@RequestParam int id,HttpSession log ) {
	SimpleMailMessage message = new SimpleMailMessage();
	userOperation formemail = new userOperation();
	
	message.setFrom("zikoubouregbi@gmail.com");
	message.setTo(formemail.getidemailform(id));
	String mailSubject = "formateur ";
	String mailContent = "yoour request for offre demploie  is approuved";
	message.setSubject(mailSubject);
	message.setText(mailContent);
	mailsender3.send(message);
	return"/listedemandes"+(int)log.getAttribute("id_offre");
		
		
}







@GetMapping("/espacadmin")
public String adminespaces() {return "/WEB-INF/Views/admin.jsp";}
@PostMapping("/espacadmin")
public String adminespac() {return "/WEB-INF/Views/admin.jsp";}

@GetMapping("/adminespa")
public String loginnview(HttpServletResponse response) {return "/WEB-INF/Views/athentificationadmin.jsp";}



@PostMapping("/adminlogin")
public String loginncontroller(@ModelAttribute("adminespa") User y,HttpSession logine , HttpServletResponse response) {
	
	userOperation admin = new userOperation();

	if (admin.authentify(y)) 
	{
		
		String nom = y.getUsername();
		logine.setAttribute("logineadmin",nom);
		
		return "/WEB-INF/Views/admin.jsp";
	}
	else 
	{
		return "/WEB-INF/Views/athentificationadmin.jsp";
	}
	
	
	
}


//email sender








//apprennat espace






@GetMapping("/espaceappr")
public String adminespacess() {return "/WEB-INF/Views/espaceapprennant.jsp";}
@PostMapping("/espaceappr")
public String appspace() {return "/WEB-INF/Views/espaceapprennant.jsp";}

@GetMapping("/athentificationapprennants")
public String loginnnview(HttpServletResponse response) {return "/WEB-INF/Views/Athentificationapprennant.jsp";}

@PostMapping("/athentificationapprennants")
public String loginnnviewe(HttpServletResponse response) {return "/WEB-INF/Views/Athentificationapprennant.jsp";}



@PostMapping("/apprlogin")
public String loginncontroller(@ModelAttribute("athentificationapprennants") appr  s,HttpSession logineappr , HttpServletResponse response) {
	
	userOperation appren = new userOperation();

	if (appren.authentifyappr(s)) 
	{
		logineappr.setAttribute("qwer", appren.getid(s.getNom(),s.getPassword()));
		String nom = s.getNom();
		logineappr.setAttribute("logineappr",nom);
		return "/WEB-INF/Views/espaceapprennant.jsp";
		
	}
	
	else 
	{
		return "/WEB-INF/Views/Athentificationapprennant.jsp";
	}
	
	
	
}

//espace formateur





@GetMapping("/espaceform")
public String formateurepacesss() {return "/WEB-INF/Views/espaceformateur.jsp";}
@PostMapping("/espaceform")
public String formateuresp() {return "/WEB-INF/Views/espaceformateur.jsp";}

@GetMapping("/athentificationformateur")
public String loginnnvieweee(HttpServletResponse response) {return "/WEB-INF/Views/Athentificationformateur.jsp";}

@PostMapping("/athentificationformateur")
public String loginnnviewee(HttpServletResponse response) {return "/WEB-INF/Views/Athentificationformateur.jsp";}



@PostMapping("/formateurlogin")
public String loginncontrollere(@ModelAttribute("athentificationformateur") formateur  n,HttpSession loginefromateur , HttpServletResponse response) {
	
	userOperation form = new userOperation();

	if (form.authentifyformateur(n)) 
	{
		loginefromateur.setAttribute("qwere", form.getidformateur(n.getNom(),n.getPassword()));
		String nom = n.getNom();
		loginefromateur.setAttribute("loginefromateur",nom);
		return "/WEB-INF/Views/espaceformateur.jsp";
	}
	
	else 
	{
		return "/WEB-INF/Views/Athentificationformateur.jsp";
	}
	
	
	
}

//
@GetMapping("/adminespace")
public String adminespace() {return "/WEB-INF/Views/espaceetebl.jsp";}
@PostMapping("/adminespace")
public String etabspaces() {return "/WEB-INF/Views/espaceetebl.jsp";}


@GetMapping("/athentetab")
public String loginview(HttpServletResponse response) {return "/WEB-INF/Views/Athentificationetab.jsp";}



@PostMapping("/etablogin")
public String logincontroller(@ModelAttribute("athentetab") etab y,HttpSession login , HttpServletResponse response) {
	
	userOperation etab = new userOperation();
	
	if (etab.authentifyetab(y)) {
		login.setAttribute("etabl", etab.getidetab(y.getNom(),y.getPassword()));

		
		String nom = y.getNom();

		login.setAttribute("loginadmin",nom);
		
		return "/WEB-INF/Views/espaceetebl.jsp";
		}
	else {
		return "/WEB-INF/Views/Athentificationetab.jsp";
	}
	
	
	
}




@GetMapping("/listoffres")
public String listeroffre(Model model) {
	userOperation offre = new userOperation();
	List<offress> list = new ArrayList<offress>();
	list = offre.list_Offres();
	model.addAttribute("list",list);
	System.out.println(list.size());
	return "WEB-INF/Views/listoffre.jsp";
	
}




@PostMapping("/listoffres")
public String listeroffrep(Model model) {
	userOperation offre = new userOperation();
	List<offress> list = new ArrayList<offress>();
	list = offre.list_Offres();
	model.addAttribute("list",list);
	System.out.println(list.size());
	return "WEB-INF/Views/listoffre.jsp";
	
}

//list formation




@GetMapping("/listformations")
public String listerformation(Model model) {
	userOperation formation = new userOperation();
	List<formation> list4 = new ArrayList<formation>();
	list4 = formation.list_formation();
	model.addAttribute("list",list4);
	System.out.println(list4.size());
	return "WEB-INF/Views/listeformationetab.jsp";
	
	
}




@PostMapping("/listformations")
public String listeformation(Model model) {
	userOperation formation = new userOperation();
	List<formation> list4 = new ArrayList<formation>();
	list4 = formation.list_formation();
	model.addAttribute("list",list4);
	System.out.println(list4.size());
	return "WEB-INF/Views/listeformationetab.jsp";
	
}


//list offre formateur


@GetMapping("/listoffresfor")
public String listeroffreee(Model model) {

	userOperation offre = new userOperation();
	List<offress> list = new ArrayList<offress>();
	list = offre.list_Offresfor();

	model.addAttribute("list",list);
	System.out.println(list.size());
	return "WEB-INF/Views/consulteroffreformateur.jsp";
	
}




@PostMapping("/listoffresfor")
public String listeroffrepe(Model model) {
	userOperation offre = new userOperation();
	List<offress> list = new ArrayList<offress>();
	list = offre.list_Offresfor();
	

	model.addAttribute("list",list);
	System.out.println(list.size());
	return "WEB-INF/Views/consulteroffreformateur.jsp";
	
}




//resuest 
//request

/*

@RequestMapping(value = "/listoffresfor", method = RequestMethod.GET)
public String showOffreforRequest(Model model,@RequestParam int id,HttpSession log ) {
	
	 log.setAttribute("id_formateur", id);
	
	   userOperation R=new userOperation();
	   List<offress> l=new ArrayList<offress>();
	   l= R.list_Offresfor(); 
	   model.addAttribute("l",l);
   
	   return"/WEB-INF/Views/consulteroffreformateur.jsp";
}

@RequestMapping(value = "/listoffresfor", method = RequestMethod.POST)
public String showOffreforRequests(Model model,@RequestParam int id,HttpSession log ) {
	
	 log.setAttribute("id_formateur", id);
	
	   userOperation R=new userOperation();
	   List<offress> l=new ArrayList<offress>();
	   l= R.list_Offresfor(); 
	   model.addAttribute("l",l);
   
	   return"/WEB-INF/Views/consulteroffreformateur.jsp";
}

*/





@RequestMapping(value = "/addRequest", method = RequestMethod.GET)
public String showFormrequest(Model model,@RequestParam int id,int id2 ) {
	 userOperation a=new userOperation();
	 demande user=new demande();
    user.setId_offre(id);
    user.setId_formateur(id2); 
    a.AddDemande(user);
	List<offress> l = new ArrayList<offress>();
	   l= a.list_Offresfor(); 
	   model.addAttribute("l",l);
	   
	  return ("/listoffresfor");
}

//demande formation

@RequestMapping(value = "/addformation", method = RequestMethod.GET)
public String showFormrequeste(Model model,@RequestParam int id,int id2 ) {
	 userOperation a=new userOperation();
	 demande_formation user=new demande_formation();
    user.setId_formation(id);
    user.setId_apprennant(id2); 
    a.AddDemande_formation(user);
	List<formation> l = new ArrayList<formation>();
	   l= a.list_formation(); 
	   model.addAttribute("l",l);
	   
	  return ("/listformation");
	
}




//liste demande formation




@GetMapping("listedemandesfomation")
public String listedemandeformation(Model model,@RequestParam int id,HttpSession form, HttpServletResponse response) {
	userOperation demande = new userOperation();
	List<appr> list = new ArrayList<appr>();
	list = demande.list_Demande_formation(id);
	model.addAttribute("list",list);
	form.setAttribute("id_formation", id);
	return "/WEB-INF/Views/consulterdemandeformation.jsp";
	

}
//liste demande 

@GetMapping("listedemandes")
public String listedemande(Model model,@RequestParam int id,HttpSession log, HttpServletResponse response) {
	userOperation demande = new userOperation();
	List<formateur> list = new ArrayList<formateur>();
	list = demande.list_Demande(id);
	model.addAttribute("list",list);
	log.setAttribute("id_offre", id);
	return "/WEB-INF/Views/consulterdemande.jsp";
	

}
/*
@PostMapping("listedemandes")
public String listedemandess (Model model,@RequestParam  int id,HttpSession log, HttpServletResponse response) {
	userOperation demande = new userOperation();
	List<formateur> list = new ArrayList<formateur>();
	list = demande.list_Demande(id);
	model.addAttribute("list",list);
	log.setAttribute("id_offre", id);
	return "/WEB-INF/Views/consulterdemande.jsp";
	

}*/



/*@RequestMapping(value = "/listedemandes",reqiued=false, method = RequestMethod.POST)
public String showFormrequeste(Model model,@RequestParam int id ) {
	userOperation demande = new userOperation();
	List<formateur> list = new ArrayList<formateur>();
	list = demande.list_Demande(id);
	model.addAttribute("list",list);
	return "/WEB-INF/Views/consulterdemande.jsp";
}*/


//offre 
@GetMapping("/supprimeroffre")
public String supprimeroffre(@RequestParam int id) {
	userOperation admin = new userOperation();
	admin.SupprimerOffre(id);
	
	/*admin.SupprimerDemandeDoffre(id);*/

	return "/listoffres";
}
@GetMapping("/modifieroffre")
public ModelAndView modifieroffre(@RequestParam int id) {
	userOperation x = new userOperation();
	offress offre = x.get_Offre(id);
	ModelAndView model = new ModelAndView("/WEB-INF/Views/modifieroffre.jsp");
	

	model.addObject("offre",offre);
	return model;
}
@PostMapping("modoffre")
public String addoffre(@ModelAttribute offress x ) {
	userOperation y = new userOperation();
	y.ModOffre(x); 
	return "/listoffres";
}





@GetMapping("/ajouteroffre")
public ModelAndView ajouteroffre(@RequestParam int id) {

	ModelAndView model = new ModelAndView("/WEB-INF/Views/ajouteroffre.jsp");
	return model;
	
}

@PostMapping("addOffre")
public String ajoffre(@ModelAttribute offress x ) {
	userOperation h = new userOperation();
	h.addOffre(x); 
	return "/listoffres";
	
}


//proposer formation




@GetMapping("/proposerformation")
public ModelAndView ajouterformation(@RequestParam int id) {

	ModelAndView model = new ModelAndView("/WEB-INF/Views/proposerformation.jsp");
	return model;
	
}

@PostMapping("addformation")
public String ajoffre(@ModelAttribute formation x ) {
	userOperation h = new userOperation();
	h.addformation(x); 
	return "/espaceform";
	
}


//

@GetMapping("/formationfor")
public String listerformationss(Model model) {
	userOperation formation = new userOperation();
	List<formation> list4 = new ArrayList<formation>();
	list4 = formation.list_formation();
	model.addAttribute("list",list4);
	System.out.println(list4.size());
	return "WEB-INF/Views/listeproposeformation.jsp";
	
}




@PostMapping("/formationfor")
public String listeroffrepdd(Model model) {
	userOperation formation = new userOperation();
	List<formation> list4 = new ArrayList<formation>();
	list4 = formation.list_formation();
	model.addAttribute("list",list4);
	System.out.println(list4.size());
	return "WEB-INF/Views/listeproposeformation.jsp";
	
	
}


//supprimer formation



@GetMapping("/supprimerformation")
public String supprimerformation(@RequestParam int id) {
	userOperation admin = new userOperation();
	admin.Supprimerformation(id);
	
	/*admin.SupprimerDemandeDoffre(id);*/

	return "/formationfor";
}




















@GetMapping("/supprimerdemande")
public String supprimeroffre(@RequestParam int id1 ,@RequestParam int id2,HttpSession log) {
userOperation admin = new userOperation();
	admin.SupprimerDemandeDeformateur(id1,id2);
	return "/listedemandes?id="+(int)log.getAttribute("id_offre");
}


@GetMapping("/supprimerdemandef")
public String supprimeroffresss(@RequestParam int id1 ,@RequestParam int id2,HttpSession form) {
userOperation admin = new userOperation();
	admin.SupprimerDemandeDeformation(id1,id2);
	return "/listedemandesfomation?id="+(int)form.getAttribute("id_formation");
}


@GetMapping("/modifieremployeur")



public String Show4d() {

return "WEB-INF/Views/modifieremployeur.jsp";		
}
@PostMapping("/modifieremployeur")



public String Show4ssdd() {

return "WEB-INF/Views/modifieremployeur.jsp";		
}





}










