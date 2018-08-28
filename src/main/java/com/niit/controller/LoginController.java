package com.niit.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;
@Controller
public class LoginController {
	
@Autowired
ProductDAO productDAO; 

@RequestMapping(value="/welcome",method=RequestMethod.GET)
	public String loginpage(Model m,HttpSession session) {
		
		String page="";
		boolean loggedIn=false;
		
		SecurityContext securitycontext = SecurityContextHolder.getContext();
		Authentication authentication = securitycontext.getAuthentication();
		
		String username = authentication.getName();
		//Return all roles
		Collection<GrantedAuthority> roles = (Collection<GrantedAuthority>)authentication.getAuthorities();
		
		for(GrantedAuthority role: roles) {
			
			session.setAttribute("role",role.getAuthority());
			System.out.println(role.getAuthority());
			
			if(role.getAuthority().equals("Admin")) {
					loggedIn=true;
					page = "AdminHome";
					session.setAttribute("loggedIn", loggedIn);
					session.setAttribute("username", username);
					
			}
			else {
					loggedIn=true;
					page = "UserHome";
					session.setAttribute("loggedIn", loggedIn);
					session.setAttribute("username", username);
					List<Product> listProducts=productDAO.getProducts();
					m.addAttribute("listProducts",listProducts); 
			}
		}
		return page;
	}
@RequestMapping(value="/UserHome")
public String showUserHome(Model m) 
{
	List<Product> listProducts=productDAO.getProducts();
	m.addAttribute("listProducts",listProducts); 
	
	return "UserHome";
}
	

	@RequestMapping(value="/loginfailed",method=RequestMethod.GET)
	public String loginerror() {
		return "Login";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logoutpage(HttpServletRequest request) {
		System.out.println("Logout Called");
		HttpSession log = request.getSession();
		log.invalidate();
		
		return "index";
	}	
	
}