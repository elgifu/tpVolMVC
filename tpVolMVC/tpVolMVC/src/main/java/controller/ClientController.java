package controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Client;
import model.ClientEl;
import model.ClientMoral;
import model.ClientPhysique;
import model.Reservation;
import repositories.ClientRepository;

@Controller
@RequestMapping("/client")
public class ClientController {

	@Autowired
	private ClientRepository clientRepository;

	@RequestMapping(value = "")
	public ModelAndView home() {
		return new ModelAndView("redirect:client/");
	}

	@RequestMapping(value = "/")
	public ModelAndView list() {
		return new ModelAndView("client/list", "clients", clientRepository.findAll());
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam(name = "id") Long id) {
		clientRepository.deleteById(id);
		return "redirect:/client/";
	}

	@RequestMapping("/edit")
	public ModelAndView edit(@RequestParam(name = "id") Long id) {
		Optional<Client> opt = clientRepository.findById(id);
		if (opt.isPresent()) {
			return goEdit(opt.get());

		}
		return new ModelAndView("redirect:/client/");
	}

	@RequestMapping("/reservation")
	public ModelAndView reservation(@RequestParam(name = "id") Long id) {
//		List<Reservation> reservations = clientRepository.findCustomByIdWithReservation(id); 
		return new ModelAndView("client/reservation", "reservations", clientRepository.findCustomByIdWithReservation(id));

	}

	@RequestMapping("/saveclientphysique")
	public ModelAndView saveClientPhysique(@ModelAttribute("client") ClientPhysique clientPhysique, BindingResult br) {
		return save(clientPhysique, br);
	}

	@RequestMapping("/saveclientmoral")
	public ModelAndView saveClientMoral(@ModelAttribute("client") ClientMoral clientMoral, BindingResult br) {
		return save(clientMoral, br);
	}

	@RequestMapping("/saveclientel")
	public ModelAndView saveClientEl(@ModelAttribute("client") ClientEl clientEl, BindingResult br) {
		return save(clientEl, br);
	}

	public ModelAndView save(Client client, BindingResult br) {
		if (br.hasErrors()) {
			return goEdit(client);
		}

		clientRepository.save(client);
		return new ModelAndView("redirect:/client/");
	}

	@RequestMapping("/addclientphysique")
	public ModelAndView addClientPhysique() {
		return goEdit(new ClientPhysique());
	}

	@RequestMapping("/addclientmoral")
	public ModelAndView addClientMoral() {
		return goEdit(new ClientMoral());
	}

	@RequestMapping("/addclientel")
	public ModelAndView addClientEl() {
		return goEdit(new ClientEl());
	}

	private ModelAndView goEdit(Client client) {
		ModelAndView modelAndView = new ModelAndView("client/edit", "client", client);
		modelAndView.addObject("clients", clientRepository.findAll());
		return modelAndView;
	}
}
