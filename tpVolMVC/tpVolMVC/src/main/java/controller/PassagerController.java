package controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Passager;
import repositories.PassagerRepository;
import repositories.ReservationRepository;

@Controller
@RequestMapping("/passager")
public class PassagerController {
	
	@Autowired
	private PassagerRepository passagerRepository;
	
	@Autowired
	private ReservationRepository reservationRepository;

	@RequestMapping("/")
	public ModelAndView list1() {
		return new ModelAndView("passager/list", "passagers", passagerRepository.findAll());
	}
	
	@RequestMapping("/edit")
	public ModelAndView edit(@RequestParam(name = "Passagerid") Long Passagerid) {
		Optional<Passager> opt = passagerRepository.findById(Passagerid);
		if (opt.isPresent()) {
			return goEdit(opt.get());
		}
		return new ModelAndView("redirect:/passager/");
	}
	
	private ModelAndView goEdit(Passager passager) {
		ModelAndView modelAndView = new ModelAndView("passager/edit", "passager", passager);
		modelAndView.addObject("passagers", passagerRepository.findAll());
		return modelAndView;
	}
	
	@RequestMapping("/save")
	private ModelAndView save(Passager passager) {
		
		passagerRepository.save(passager);
		return new ModelAndView("redirect:/passager/");
	}
	
}
