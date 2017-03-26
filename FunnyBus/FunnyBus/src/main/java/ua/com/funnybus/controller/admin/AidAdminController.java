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

import ua.com.funnybus.entity.Aid;
import ua.com.funnybus.service.AidService;

@Controller
@RequestMapping("/admin/aid")
@SessionAttributes("aid")
public class AidAdminController {
	
	@Autowired
	private AidService aidService;
	
	@ModelAttribute("aid")
	public Aid getForm(){
		return new Aid();
	}
	
	@GetMapping
	public String show(Model model, @PageableDefault(direction=Sort.Direction.DESC, sort="id") Pageable pageable){
		model.addAttribute("page", aidService.findAll(pageable));
		return "admin-aid";
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable int id, Model model,  @PageableDefault Pageable pageable){
		model.addAttribute("aid", aidService.findOne(id));
		return show(model, pageable);
	}
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id, @PageableDefault Pageable pageable){
		aidService.delete(id);
		return "redirect:/admin/aid";
	}
	
	@PostMapping
	public String save(@ModelAttribute("aid") Aid aid, SessionStatus status, @PageableDefault Pageable pageable){
		aidService.save(aid);
		status.setComplete();
		return "redirect:/admin/aid";
	}
}
