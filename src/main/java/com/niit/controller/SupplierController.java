package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping("/supplier")
	  public String showCategory(Model m)
	  {
		  List<Supplier> listSuppliers= supplierDAO.listSuppliers();
		  m.addAttribute("supplierList",listSuppliers);
		  return "Supplier";
		  
	  }
	
	@RequestMapping(value="/InsertSupplier",method=RequestMethod.POST)
	  public String addSupplier( @RequestParam("supname")String supName ,@RequestParam("supaddr") String supAddr,Model m)
	  {  
		  Supplier supplier=new Supplier();
		  supplier.setSupplierName(supName);
		  supplier.setSupplierAddr(supAddr);
		  
		  supplierDAO.addSupplier(supplier);
		  
		  List<Supplier> listSuppliers= supplierDAO.listSuppliers();
		  m.addAttribute("supplierList",listSuppliers);
		 
		  return "Supplier";
	  }
	 
	@RequestMapping("/deleteSupplier/{supplierId}")
	  public String deleteSupplier(@PathVariable("supplierId") int supplierId,Model m)
	  {
		  Supplier supplier=(Supplier)supplierDAO.getSupplier(supplierId);
		  supplierDAO.deleteSupplier(supplier);
		  
		  List<Supplier> listSuppliers= supplierDAO.listSuppliers();
		  m.addAttribute("supplierList",listSuppliers);
		 
		 
		  return "Supplier";
	  }

	  @RequestMapping("/editSupplier/{supplierId}")
	  public String editSupplier(@PathVariable("supplierId") int supplierId,Model m)
	  {
		  Supplier supplier=(Supplier)supplierDAO.getSupplier(supplierId);
		  
		  List<Supplier> listSuppliers= supplierDAO.listSuppliers();
		  m.addAttribute("supplierList",listSuppliers);
		  m.addAttribute("supplierInfo",supplier);
		 
		  return "UpdateSupplier";
	  }
	  
	  @RequestMapping(value="/updateSupplier",method=RequestMethod.POST)
	  public String updateSupplier(@RequestParam("supid")int supplierId, @RequestParam("supname")String supName ,@RequestParam("supaddr") String supAddr,Model m)
	  {
		  Supplier supplier=(Supplier)supplierDAO.getSupplier(supplierId);
		  supplier.setSupplierName(supName);
		  supplier.setSupplierAddr(supAddr);
		  
		  supplierDAO.updateSupplier(supplier);
		  
		  List<Supplier> listSuppliers= supplierDAO.listSuppliers();
		  m.addAttribute("supplierList",listSuppliers);
		  
		  return"Supplier";
		  
	  }
	}

	
	
	
	

