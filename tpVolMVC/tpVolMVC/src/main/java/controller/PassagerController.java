package controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
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
	
	@RequestMapping("")
	public ModelAndView home() {
		return new ModelAndView("redirect:passager/");
	}

	@RequestMapping("/")
	public ModelAndView list1() {
		return new ModelAndView("passager/list", "passagers", passagerRepository.findAll());
	}
	
	@RequestMapping("/delete")
	 public String delete(@RequestParam(name="id") Long id) {
		 passagerRepository.deleteById(id);
		 return "redirect:/passager/";
	 }
	
	@RequestMapping("/edit")
	public ModelAndView edit(@RequestParam(name = "id") Long Passagerid) {
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
	private ModelAndView save(Passager passager, BindingResult br) {
		if (br.hasErrors()) {
			return goEdit(passager);
		}
		passagerRepository.save(passager);
		return new ModelAndView("redirect:/passager/");
	}
	
	@RequestMapping("/add")
	 public ModelAndView add() {
		 return goEdit(new Passager());
		 
	 }
	
	@RequestMapping("/reservation")
	public ModelAndView listReservation(@RequestParam(name="id") Long id) {
		return new ModelAndView("client/reservation", "reservations", passagerRepository.findCustomByIdWithReservation(id));
	}
}
