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

import ua.com.funnybus.entity.Act;
import ua.com.funnybus.service.ActService;


@Controller
@RequestMapping("/admin/act")
@SessionAttributes("act")
public class ActAdminController {
	
	@Autowired
	private ActService actService;
	
	@ModelAttribute("act")
	public Act getForm(){
		return new Act();
	}
	
	@GetMapping
	public String show(Model model, @PageableDefault(direction=Sort.Direction.DESC, sort="id") Pageable pageable){
		model.addAttribute("page", actService.findAll(pageable));
		return "admin-act";
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable int id, Model model,  @PageableDefault Pageable pageable){
		model.addAttribute("act", actService.findOne(id));
		return show(model, pageable);
	}
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable int id, @PageableDefault Pageable pageable){
		actService.delete(id);
		return "redirect:/admin/act";
	}
	
	@PostMapping
	public String save(@ModelAttribute("act") Act act, SessionStatus status, @PageableDefault Pageable pageable){
		actService.save(act);
		status.setComplete();
		return "redirect:/admin/act";
	}
}
