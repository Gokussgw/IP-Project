package my.utm.ip.spring_jdbc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import my.utm.ip.spring_jdbc.entity.User;
import my.utm.ip.spring_jdbc.repository.UserRepository;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public boolean authenticate(String email, String password) {
        User user = userRepository.findByEmailAndPassword(email, password);
        return user != null;
    }

    public User findUserByEmail(String email) {
        return userRepository.findUserByEmail(email);
    }

    // Other service methods as needed
}