package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.UserDAO;
import com.niit.model.User;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping(value="/InsertUser",method=RequestMethod.POST)
	public String addUser(@ModelAttribute("user")User user,Model m) {
		
		System.out.println(user.getPassword());
		String password = user.getPassword();
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String hashedPassword = passwordEncoder.encode(password);
		user.setPassword(hashedPassword);
		
		user.setEnabled(true);
		userDAO.registerUser(user);
		
		User user1 = new User();
		m.addAttribute(user1);
		
		System.out.println("you have sucessfully register to EzKart");
		return "redirect:/index";
	}

}
