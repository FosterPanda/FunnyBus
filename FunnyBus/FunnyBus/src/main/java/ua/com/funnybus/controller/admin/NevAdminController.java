package ua.com.funnybus.controller.admin;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import ua.com.funnybus.entity.Nev;
import ua.com.funnybus.service.NevService;

@Controller
@RequestMapping("/admin/new")
@SessionAttributes("nev")
public class NevAdminController {
	
	@Autowired
	private NevService nevService;
	
	@ModelAttribute("nev")
	public Nev getForm(){
		return new Nev();
	}
	
	@GetMapping
	public String show(Model model, @PageableDefault(direction=Sort.Direction.DESC, sort="id") Pageable pageable){
		model.addAttribute("page", nevService.findAll(pageable));
		return "admin-new";
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable int id, Model model,  @PageableDefault Pageable pageable){
		model.addAttribute("nev", nevService.findOne(id));
		return show(model, pageable);
	}
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id, @PageableDefault Pageable pageable){
		nevService.delete(id);
		return "redirect:/admin/new";
	}
	
	@PostMapping
	public String save(@ModelAttribute("nev") Nev nev, SessionStatus status, @PageableDefault Pageable pageable){
		nevService.save(nev);
		status.setComplete();
		return "redirect:/admin/new";
	}
}
