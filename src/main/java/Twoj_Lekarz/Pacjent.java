package Twoj_Lekarz;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "Pacjent")
@Getter @Setter @EqualsAndHashCode(of = "id")

public class Pacjent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String Name;
    private String FirstName;
    private String Age;
    private String Pesel;
    private String Street;
    private String City;
    private String Phone;
}