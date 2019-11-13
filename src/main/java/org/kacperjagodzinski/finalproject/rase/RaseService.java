package org.kacperjagodzinski.finalproject.rase;

import org.hibernate.Hibernate;
import org.kacperjagodzinski.finalproject.dog.Dog;
import org.springframework.stereotype.Service;

import java.awt.print.Book;
import java.util.List;
@Service
public class RaseService {

    private final RaseRepository raseRepository;

    public RaseService(RaseRepository raseRepository) {
        this.raseRepository = raseRepository;
    }

    public void create(Rase rase) {
        raseRepository.save(rase);
    }

    public void update(Rase rase) {
        raseRepository.save(rase);
    }

    public Rase findOne(Long id) {
        return raseRepository.findById(id).orElse(null);
    }

    public void deleteOne(Long id) {
        raseRepository.deleteById(id);
    }

    public List<Rase> findAll() {
        List<Rase> rases = raseRepository.findAll();
        return rases;
    }

}
