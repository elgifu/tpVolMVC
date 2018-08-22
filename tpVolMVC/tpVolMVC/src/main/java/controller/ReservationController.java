package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import repositories.ReservationRepository;

@Controller
@RequestMapping("/reservation")
public class ReservationController {
	
	@Autowired
	private ReservationRepository reservationRepository;
	
	@RequestMapping("")
	public ModelAndView home() {
		return new ModelAndView("redirect:reservation/");
	}
	
	@RequestMapping("/")
	public ModelAndView list() {
		return new ModelAndView("reservation/list", "reservations", reservationRepository.findAll());
	}
	
	
}
