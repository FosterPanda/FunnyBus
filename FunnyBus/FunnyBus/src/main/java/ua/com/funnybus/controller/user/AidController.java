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

import ua.com.funnybus.entity.Aid;
import ua.com.funnybus.service.AidService;

@Controller
@RequestMapping("/aid")
@SessionAttributes("aid")
public class AidController {
	
	@Autowired
	private AidService aidService;
	
	@ModelAttribute("aid")
	public Aid getForm(){
		return new Aid();
	}
	
	@GetMapping
	public String show(Model model, @PageableDefault(direction=Sort.Direction.DESC, sort="id", size=8) Pageable pageable){
		model.addAttribute("page", aidService.findAll(pageable));
		return "user-aid";
	}
}
