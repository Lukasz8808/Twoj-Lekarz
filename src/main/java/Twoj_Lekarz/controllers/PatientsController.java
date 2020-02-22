package Twoj_Lekarz.controllers;

import Twoj_Lekarz.Patient;
import Twoj_Lekarz.repos.PatientRepostory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/patients")
@Controller
public class PatientsController {
    private final PatientRepostory patientRepostory;

    @Autowired
    public PatientsController(PatientRepostory patientRepostory) {
        this.patientRepostory = patientRepostory;
    }

    @GetMapping
    public String schowPacjent(Model model) {
        List<Patient> allPatients = patientRepostory.findAll();
        model.addAttribute("allPatients",allPatients);
        return "/views/patients.jsp";

    }

}
