package fr.caensup.portfolio.services;

import fr.caensup.portfolio.dtos.UserDto;
import fr.caensup.portfolio.entities.User;
import fr.caensup.portfolio.exceptions.UserNotFoundException;
import fr.caensup.portfolio.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.UUID;

@Service
public class UserService {
    @Autowired
    private UserRepository userRepository;

    public Optional<User> getUserById(UUID id){
        return userRepository.findById(id);
    }

    public User createNewUser(UserDto userDto){
        User newUser=new User();
        userDto.toEntity(newUser);
        return userRepository.save(newUser);
    }

    public User updateUser(UUID idUserToUpdate,UserDto userDto) throws UserNotFoundException {
        Optional<User> optUser=userRepository.findById(idUserToUpdate);
        if(optUser.isPresent()) {
            User user = optUser.get();
            userDto.toEntity(user);
            return userRepository.save(user);
        }
        throw new UserNotFoundException("Utilisateur d'id "+idUserToUpdate+" non trouvé !");
    }
}
