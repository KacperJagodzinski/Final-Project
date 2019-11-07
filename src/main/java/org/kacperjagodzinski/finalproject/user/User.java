package org.kacperjagodzinski.finalproject.user;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;

@Entity
@Setter
@Getter
public class User {
    private Long id;
    private String firstName;
    private String lastName;
    private long dogId;
    private String description;
    private double rating;

}
