package Twoj_Lekarz.controllers;

import Twoj_Lekarz.Patient;
import Twoj_Lekarz.repos.PatientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/patients")
@Controller
public class PatientsController {
    private final PatientRepository patientRepository;

    @Autowired
    public PatientsController(PatientRepository patientRepositorytory) {
        this.patientRepository = patientRepositorytory;
    }

    @GetMapping
    public String schowPatient(Model model) {
        List<Patient> allPatients = patientRepository.findAll();
        model.addAttribute("allPatients",allPatients);
        return "/views/patients.jsp";

    }

}
