package com.jonfriend.employeePlus_Javaland.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.jonfriend.employeePlus_Javaland.models.Worker;
import com.jonfriend.employeePlus_Javaland.services.UserService;
import com.jonfriend.employeePlus_Javaland.services.WorkerService;

@Controller
public class WorkerController {

	@Autowired
	private HttpSession session;
	@Autowired 
	private WorkerService workerService;
	@Autowired
	private UserService userService;
	
	
	//to enter home
	@GetMapping("/home")
	public String homeH(Model dashH) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		}//main page display workers and user name
		Long userId = (Long) session.getAttribute("userId");//this shows who is online (welcome user)	
		dashH.addAttribute("user", userService.findById(userId));//(welcome user)
		return "helloworld.jsp";
	}
	
	@GetMapping("/workers")
	public String home(Model dashB) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		}//main page display workers and user name
		Long userId = (Long) session.getAttribute("userId");//this shows who is online (welcome user)	
		dashB.addAttribute("user", userService.findById(userId));//(welcome user)
		dashB.addAttribute("allworkers", workerService.getAllWorkers());//getAll is in the service page
		return "dashboard.jsp";
		
	}
	
//	Check if user is in session for all get routes
	//Add new  Get and Post
	@GetMapping("/workers/new")
	public String newBelt(Model newW) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		Long userId = (Long) session.getAttribute("userId");//this shows who is online (welcome user)	
		newW.addAttribute("user", userService.findById(userId));//(welcome user)
		newW.addAttribute("newWW", new Worker());
		newW.addAttribute("sessionId", session.getAttribute("userId"));
		return "add.jsp";
	}
	
	//for POST we need to add valid
	@PostMapping("/workers/add")
	public String addBelt(@Valid @ModelAttribute("newWW") Worker newWorker, BindingResult results) {
		if(results.hasErrors()) {
			return "add.jsp";
		}
		workerService.saveWorker(newWorker);
		return "redirect:/workers";
	}
	
	//view details 
	@GetMapping("/worker/{id}")
	public String view(@PathVariable("id") Long id, Model model) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		Long userId = (Long) session.getAttribute("userId");//this shows who is online (welcome user)	
		model.addAttribute("user", userService.findById(userId));//(welcome user)
		model.addAttribute("emp", workerService.getById(id));
		model.addAttribute("userId", session.getAttribute("userId"));
		return "details.jsp";
	}
	
	//EDIT AND UPDATE
	
	@GetMapping("/workers/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model edit) {
		if(session.getAttribute("userId") == null) {
			return "redirect:/";
		}
		Worker editWorker = workerService.getById(id);
		Long userId = (Long) session.getAttribute("userId");//this shows who is online (welcome user)	
		edit.addAttribute("user", userService.findById(userId));//(welcome user)
		edit.addAttribute("emp", editWorker);
		return "edit.jsp";
	}
	@PutMapping("/workers/update/{id}")
	public String update(@Valid @ModelAttribute("emp") Worker worker, BindingResult update) {
		if(update.hasErrors()) {
			return "edit.jsp";
		}
		workerService.updateW(worker);
		return "redirect:/workers";
	}
	//delete with flash message
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable Long id) {
		if(session.getAttribute("userId") == null){
			return "redirect:/";
		}
		this.workerService.delete(id);
		return "redirect:/workers";
	}
	
}
