package ua.com.funnybus.controller.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import ua.com.funnybus.entity.Act;
import ua.com.funnybus.service.ActService;

@Controller
@RequestMapping("/actions")
@SessionAttributes("act")
public class ActController {
	
	@Autowired
	private ActService actService;
	
	@ModelAttribute("act")
	public Act getForm(){
		return new Act();
	}
	
	@GetMapping
	public String show(Model model, @PageableDefault(direction=Sort.Direction.DESC, sort="id", size=8) Pageable pageable){
		model.addAttribute("page", actService.findAll(pageable));
		return "user-act";
	}
}
