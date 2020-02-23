package Twoj_Lekarz.controllers;

import Twoj_Lekarz.Doctor;
import Twoj_Lekarz.repos.DoctorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/doctors")
@Controller
public class DoctorsController {

    private final DoctorRepository doctorRepository;

    @Autowired
    public DoctorsController(DoctorRepository doctorRepository) {
        this.doctorRepository = doctorRepository;
    }

    @GetMapping
    public String showDoctors(Model model) {
        List<Doctor> allDoctors = doctorRepository.findAll();
        model.addAttribute("allDoctors", allDoctors);
        return "/views/doctors.jsp";
    }

    @PostMapping("/add")
    public String addDoctor(String name, String specialization, String office) {
        Doctor doctor = new Doctor();
        doctor.setName(name);
        doctor.setSpecialization(specialization);
        doctor.setOffice(office);
        doctorRepository.save(doctor);
        return "redirect:/doctors";
    }

    @PostMapping("/remove")
    public String removeDoctor(Integer doctorId) {
        Doctor doctor = doctorRepository.getOne(doctorId);
        doctorRepository.delete(doctor);
        return "redirect:/doctors";
    }
}
