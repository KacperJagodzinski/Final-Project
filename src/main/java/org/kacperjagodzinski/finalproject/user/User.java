package org.kacperjagodzinski.finalproject.user;

import lombok.Getter;
import lombok.Setter;
import org.apache.tomcat.jni.Address;
import org.kacperjagodzinski.finalproject.dog.Dog;
import org.kacperjagodzinski.finalproject.walk.Walk;

import javax.persistence.*;
import javax.validation.constraints.Email;
import java.util.ArrayList;
import java.util.List;

@Entity
@Setter
@Getter
@Table(name="users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Email
    private String email;

    private String password;

    private String firstName;

    private String lastName;

    private String description;

    private double rating = 1;

    @OneToMany
    @JoinColumn(name="id_user")
    private List<Dog> dogs =new ArrayList<>();

    @ManyToMany
    @JoinTable(name = "users_walks",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "walk_id"))
    private List<Walk> walks = new ArrayList<>();


}
