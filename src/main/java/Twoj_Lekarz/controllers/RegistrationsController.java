package Twoj_Lekarz.controllers;

import Twoj_Lekarz.Doctor;
import Twoj_Lekarz.Patient;
import Twoj_Lekarz.Registration;
import Twoj_Lekarz.repos.DoctorRepository;
import Twoj_Lekarz.repos.PatientRepository;
import Twoj_Lekarz.repos.RegistrationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/registrations")
@Controller
public class RegistrationsController {

    private final RegistrationRepository registrationRepository;
    private final PatientRepository patientRepository;
    private final DoctorRepository doctorRepository;

    @Autowired
    public RegistrationsController(RegistrationRepository registrationsRepositor, PatientRepository patientRepository, DoctorRepository doctorRepository) {
        this.registrationRepository = registrationsRepositor;
        this.patientRepository = patientRepository;
        this.doctorRepository = doctorRepository;
    }

    @GetMapping
    public String showRegistration(Model model) {
        List<Registration> allRegistration = registrationRepository.findAll();
        model.addAttribute("allRegistration", allRegistration);
        model.addAttribute("patients", patientRepository.findAll());
        model.addAttribute("doctors", doctorRepository.findAll());
        return "/views/registrations.jsp";
    }

    @PostMapping("/add")
    public String addRegistration(String date, String time, Integer patientId, Integer doctorId) {
        Registration registration = new Registration();
        registration.setDate(date);
        registration.setTime(time);
        registration.setDuration("15'");
        Patient patient = patientRepository.getOne(patientId);
        registration.setPatient(patient);
        Doctor doctor = doctorRepository.getOne(doctorId);
        registration.setDoctor(doctor);
        registrationRepository.save(registration);
        return "redirect:/registrations";
    }
}
