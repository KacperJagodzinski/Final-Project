package org.kacperjagodzinski.finalproject.dog;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DogRepository extends JpaRepository<Dog,Long> {


}
