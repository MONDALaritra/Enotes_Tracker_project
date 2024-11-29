package com.packages.controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.packages.dao.UserDao;
import com.packages.entity.Notes;
import com.packages.entity.User;

@Controller
@RequestMapping("/user/")
public class userController {
	@Autowired
	private UserDao userdao;
	@RequestMapping("/addNotes")
	public String addNotes() {
		return "addNotes";
	}
	
	@RequestMapping("/viewNotes")
	public String viewNotes(HttpSession session,Model m) {
		User us = (User)session.getAttribute("userobj");
		List<Notes> notes = userdao.getNotesByUser(us);
		m.addAttribute("list",notes);
		return "viewNotes";
	}
	 
	@RequestMapping("/editNotes")
	public String editNotes(@RequestParam("id")int id,Model m ) {
		Notes n = userdao.getNotesById(id);
		m.addAttribute("notes",n);
		return "editNotes";
	}
	
	@RequestMapping(path="/updateNotes", method=RequestMethod.POST)
	public String updateNotes(@ModelAttribute Notes n, HttpSession session) {
		User us = (User)session.getAttribute("userobj");
		n.setUser(us);
		n.setDate(LocalDateTime.now().toString());
		userdao.updateNotes(n);
		session.setAttribute("editmssg","Your Note is updated");
		return "redirect:/user/viewNotes";
	}
	/*@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("userobj");
		session.setAttribute("mssg","Successfully logged out");
		return "login";
	}*/
	
	@RequestMapping(path="/saveNotes", method=RequestMethod.POST)
	public String saveNotes(@ModelAttribute Notes n, HttpSession session) {
		User us = (User)session.getAttribute("userobj");
		n.setDate(LocalDateTime.now().toString());
		n.setUser(us);
		userdao.saveNotes(n);
		session.setAttribute("notemssg","Your Note is added");
		return "redirect:/user/addNotes";
	}
	
	@RequestMapping("/deleteNotes")
	public String deleteNotes(@RequestParam("id") int id,HttpSession session) {
		userdao.deleteNotes(id);
		session.setAttribute("editmssg", "Note deleted Successfully");
		return "redirect:/user/viewNotes";
	}
	
	@RequestMapping("/displayNotes")
	public String displayNotes(@RequestParam("id") int id,Model m) {
		Notes n = userdao.getNotesById(id);
		m.addAttribute("notes",n);
		return "displayNotes";
	}
}
