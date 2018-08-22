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
public ModelAndView add(Model model) {
	return goEdit(new Vol(),model);
}
private ModelAndView goEdit(Vol vol, Model model) {
	model.addAttribute("vol",vol);
	return new ModelAndView("vol/edit");
}

@RequestMapping("/edit")
public ModelAndView delete(@RequestParam(name="id") Long id,Model model) {
	Optional<Vol> opt=volRepository.findById(id);
	if (opt.isPresent()) {
		return goEdit(opt.get(), model);
	}
	return goEdit(new Vol(), model);
}

@RequestMapping("/save")
public ModelAndView save(@Valid @ModelAttribute("vol") Vol vol, BindingResult br,Model model) {
	if(br.hasErrors()) {
		return goEdit(vol,model);
	}else {
		volRepository.save(vol);
		return new ModelAndView("redirect:/vol/");
	}
}



}
