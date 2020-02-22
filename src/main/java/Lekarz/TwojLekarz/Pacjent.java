package Lekarz.TwojLekarz;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Pacjent")
@Getter @Setter @EqualsAndHashCode(of = "id")

public class Pacjent {
    @Id
    private Long id;
    private String Name;
    private String FirstName;
    private String Age;
    private String Pesel;
    private String Street;
    private String City;
    private String Phone;
}