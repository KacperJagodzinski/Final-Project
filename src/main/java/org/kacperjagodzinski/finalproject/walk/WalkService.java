package org.kacperjagodzinski.finalproject.walk;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class WalkService {

    private final WalkRepository walkRepository;

    public WalkService(WalkRepository walkRepository) {
        this.walkRepository = walkRepository;
    }

    public void create(Walk walk) {
        walkRepository.save(walk);
    }

    public void update(Walk walk) {
        walkRepository.save(walk);
    }

    public Walk findOne(Long id) {
        return walkRepository.findById(id).orElse(null);
    }

    public void deleteOne(Long id) {
        walkRepository.deleteById(id);
    }

    public List<Walk> findAllWalks(){return walkRepository.findAll();}

    public List<Walk> findAllActiveWalks(){return walkRepository.findAllByIfActiveTrueOrderByDatetime();}

}
