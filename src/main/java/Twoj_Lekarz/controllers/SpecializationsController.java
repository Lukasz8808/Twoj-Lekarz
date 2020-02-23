package Twoj_Lekarz.controllers;

import Twoj_Lekarz.Specialization;
import Twoj_Lekarz.repos.SpecializationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/specializations")
@Controller
public class SpecializationsController {
    private final SpecializationRepository specializationRepository;
    @Autowired
    public SpecializationsController(SpecializationRepository specializationRepository){this.specializationRepository = specializationRepository; }
    @GetMapping
    public String showSpecializations(Model model) {
        List<Specialization> allSpecializations = specializationRepository.findAll();
        model.addAttribute("allSpecializations",allSpecializations);
        return "/views/specializations.jsp";
    }
}
