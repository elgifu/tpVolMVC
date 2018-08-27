package controller;

import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Vol;
import repositories.VolRepository;

@Controller
@RequestMapping("/vol")
public class VolController {
@Autowired
private VolRepository volRepository;
@RequestMapping("/")
public ModelAndView list(Model model) {
	model.addAttribute("vols",volRepository.findAll());
	return new ModelAndView("vol/list");
}
@RequestMapping("/delete")
public ModelAndView delete(@RequestParam(name="id") Long id) {
	volRepository.deleteById(id);
	return new ModelAndView("redirect:/vol/");
}
@RequestMapping("/add")
public ModelAndView add() {
	return goEdit(new Vol());
}
private ModelAndView goEdit(Vol vol) {
	return new ModelAndView("vol/edit", "vol",vol);
}

@RequestMapping("/edit")
public ModelAndView edit(@RequestParam(name="id") Long id) {
	Optional<Vol> opt=volRepository.findById(id);
	if (opt.isPresent()) {
		return goEdit(opt.get());
	}
	return goEdit(new Vol());
}

@RequestMapping("/save")
public ModelAndView save(@Valid @ModelAttribute("vol") Vol vol, BindingResult br) {
	if(br.hasErrors()) {
		return goEdit(vol);
	}else {
		volRepository.save(vol);
		return new ModelAndView("redirect:/vol/");
	}
}

@RequestMapping("/reservationsVols")
public String reservations(@RequestParam(name = "id") Long id, Model model) {
    Optional<Reservations> opt= passagerRepository.findCustomByIdWithReservation(id);
    if (opt.isPresent()) {
        model.addAttribute("reservations", opt.get().getReservations());
        return "reservation/list";
    }
     return "redirect:/passager/";
}



}
