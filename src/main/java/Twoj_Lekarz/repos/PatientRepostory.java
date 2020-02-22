package Twoj_Lekarz.repos;

import Twoj_Lekarz.Patient;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PatientRepostory extends JpaRepository <Patient, Integer> {

}
