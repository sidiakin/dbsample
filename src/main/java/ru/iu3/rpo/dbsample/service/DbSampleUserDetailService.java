package ru.iu3.rpo.dbsample.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import ru.iu3.rpo.dbsample.model.UserEntity;
import ru.iu3.rpo.dbsample.repository.UserRepository;

@Service
public class DbSampleUserDetailService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) {
        UserEntity user = userRepository.findByEmail(username);
        if (user == null) {
            return hardCodedUser();
        }
        return user;
    }

    private UserDetails hardCodedUser() {
		return User.withUsername("user")
			.password("{bcrypt}$2a$12$7HSyMpp94SZsT3SEboWdKuM6XDt7mXBGnpftapfF95WK0nroPDKue")
			.roles("USER")
			.build();
	}

    
}
