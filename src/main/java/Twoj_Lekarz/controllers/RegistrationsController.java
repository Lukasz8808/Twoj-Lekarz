package Twoj_Lekarz.controllers;

import Twoj_Lekarz.Registration;
import Twoj_Lekarz.repos.RegistrationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/registrations")
@Controller
public class RegistrationsController {
    private final RegistrationRepository registrationRepository;

    @Autowired

    public RegistrationsController (RegistrationRepository registrationsRepositor)
    {this.registrationRepository = registrationsRepositor;}

    @GetMapping

    public String showRegistration(Model model) {
        List<Registration> allRegistration = registrationRepository.findAll();
        model.addAttribute("allRegistration", allRegistration);
        return "/views/registrations.jsp";

    }
}
