package org.kacperjagodzinski.finalproject.dog;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.validator.constraints.Range;
import org.kacperjagodzinski.finalproject.rase.Rase;

import javax.persistence.*;
import javax.validation.constraints.Min;

@Getter
@Setter
@Entity
@Table(name="dogs")
public class Dog {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String gender;

    @Min(0)
    private int age;

    private String description;

    @Range(min = 1, max = 10)
    private double rating = 1;

    @ManyToOne
    @JoinColumn(name = "rase_id")
    private Rase rase;

}
