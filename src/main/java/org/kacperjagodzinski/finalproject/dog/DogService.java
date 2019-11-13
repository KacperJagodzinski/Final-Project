package org.kacperjagodzinski.finalproject.dog;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class DogService {

    private final DogRepository dogRepository;

    @Autowired
    public DogService(DogRepository dogRepository) {
        this.dogRepository = dogRepository;
    }

    public void create(Dog dog) {
        dogRepository.save(dog);
    }

    public void update(Dog dog) {
        dogRepository.save(dog);
    }

    public Dog findOne(Long id) {
        return dogRepository.findById(id).orElse(null);
    }

    public void deleteOne(Long id) {
        dogRepository.deleteById(id);
    }


}
