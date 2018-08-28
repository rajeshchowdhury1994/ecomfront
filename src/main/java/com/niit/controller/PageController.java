package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.model.User;

@Controller
public class PageController
{
@RequestMapping("/Login")
public String showLogin() 
{
 return "Login";
}
	
@RequestMapping("/about")
public String showAbout()
{
	return"About";
}
@RequestMapping("/contact")
public String showContact()
{
	return"Contact";
} 

@RequestMapping(value="/signup")
public String val4(Model model) {
	model.addAttribute("user", new User());
	return "signup";	
}


}