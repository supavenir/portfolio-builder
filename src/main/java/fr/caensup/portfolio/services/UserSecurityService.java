package fr.caensup.portfolio.services;

import fr.caensup.portfolio.entities.User;
import fr.caensup.portfolio.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserSecurityService implements UserDetailsService {

    @Autowired
    private UserRepository uRepo;

    @Autowired
    private PasswordEncoder pEncoder;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<fr.caensup.portfolio.entities.User> optUser = uRepo.findByLoginEmail( username);
        return optUser.orElseThrow(() -> new UsernameNotFoundException("Utilisateur inconnu"));
    }

    public void encodePassword(User user) {
        user.setPassword(pEncoder.encode(user.getPassword()));
    }

    public User createUser(String login, String password) {
        User user = new User();
        user.setLogin(login);
        user.setPassword(password);
        encodePassword(user);
        return uRepo.save(user);
    }
}
