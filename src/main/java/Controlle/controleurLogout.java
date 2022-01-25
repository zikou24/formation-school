package Controlle;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;

import Metier.User;




@Controller

public class controleurLogout {
	
		
	@GetMapping("/logoutt")
		
	

		public String Show4(@ModelAttribute User user,Model model,  String userName,HttpSession session, HttpServletRequest request ) {

HttpSession sessions =request.getSession();
sessions.getAttribute("name");

session.invalidate();

			return "Lagout";		
			
		}

}
