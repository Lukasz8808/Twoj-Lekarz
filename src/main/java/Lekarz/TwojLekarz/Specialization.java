package Lekarz.TwojLekarz;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Specjalizacja")
@Getter @Setter @EqualsAndHashCode(of = "id")
public class Specialization {
    @Id
    private Long id;
    private String EYEDOCTOR;
    private String GYNECOLOGIST;
    private String INTERNIST;
    private String PEDIATRICIAN;
    private String PSYCHOLOGIST;
}
