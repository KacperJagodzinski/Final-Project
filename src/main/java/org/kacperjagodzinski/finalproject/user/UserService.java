package org.kacperjagodzinski.finalproject.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService {

    private final UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public void create(User user) {
        userRepository.save(user);
    }

    public void update(User user) {
        userRepository.save(user);
    }

    public User findOne(Long id) {
        return userRepository.findById(id).orElse(null);
    }

    public void deleteOne(Long id) {
        userRepository.deleteById(id);
    }

    public User findFirstByEmail(String email){
        User user = userRepository.findFirstByEmail(email);
        return user;
    }

}
