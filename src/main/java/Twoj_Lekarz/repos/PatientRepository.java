package Twoj_Lekarz.repos;

import Twoj_Lekarz.Patient;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PatientRepository extends JpaRepository <Patient, Integer> {

}
