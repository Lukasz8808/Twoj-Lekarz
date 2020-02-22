package Twoj_Lekarz;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;



    @Entity
    @Table(name = "rejestracja")
    @Getter @Setter
    @EqualsAndHashCode(of = "id")
    public class Registration {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Integer id;
        @Column(name = "data")
        private String date;
        @Column(name = "godzina")
        private String time;
        @Column(name = "czas_trwania")
        private String duration;
        @ManyToOne
        private Doctor doctor;
        @ManyToOne
        private Patient patient;

    }

