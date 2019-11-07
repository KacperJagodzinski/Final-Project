package org.kacperjagodzinski.finalproject.dog;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
@Getter
@Setter
@Entity
public class Dog {
    private Long id;
    private String name;
    private String rase;
    private String gender;
    private int age;
    private String description;
    private double rating;
}
