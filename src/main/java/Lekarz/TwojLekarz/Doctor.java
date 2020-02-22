package Lekarz.TwojLekarz;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "lekarz")
@Getter @Setter @EqualsAndHashCode(of = "id")
public class Doctor {
    @Id



    private String Name;
    private String FirstName;
    private String specialization;
    private String Office;



}
