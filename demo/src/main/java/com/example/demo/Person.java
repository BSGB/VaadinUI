package com.example.demo;

import com.vaadin.spring.annotation.SpringComponent;
import lombok.*;
import org.springframework.context.annotation.PropertySource;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Bartosz on 05.06.2017.
 */
@NoArgsConstructor
@ToString
@SpringComponent
@Entity
@Table(name = "mytable")
public class Person implements Serializable {

    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    @Getter private Long id;

    @Column(name = "Imie")
    @Getter@Setter private String name;

    @Column(name = "Nazwisko")
    @Getter@Setter private String lastName;

    @Column(name = "Email")
    @Getter@Setter private String email;

    @Column(name = "Miasto")
    @Getter@Setter private String city;

    @Column(name = "Zip")
    @Getter@Setter private String postCode;

    public Person(String name, String lastName, String email, String city, String postCode) {
        this.name = name;
        this.lastName = lastName;
        this.email = email;
        this.city = city;
        this.postCode = postCode;
    }


}
