package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/home")
public class HomeController {

	@RequestMapping("")
	public ModelAndView home() {
		return new ModelAndView("redirect:home/");
	}

	@RequestMapping("/")
	public ModelAndView menu() {
		return new ModelAndView("home/home");
	}

	@RequestMapping("/vol")
	public ModelAndView vol() {
		return new ModelAndView("redirect:/vol/");
	}

	@RequestMapping("/client")
	public ModelAndView client() {
		return new ModelAndView("redirect:/client/");
	}

	@RequestMapping("/reservation")
	public ModelAndView reservation() {
		return new ModelAndView("redirect:/reservation/");
	}

	@RequestMapping("/passager")
	public ModelAndView passager() {
		return new ModelAndView("redirect:/passager/");
	}

}
