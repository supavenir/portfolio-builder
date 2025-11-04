package fr.caensup.portfolio.repositories;

import fr.caensup.portfolio.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface UserRepository extends JpaRepository<User, UUID> {

    @Query("SELECT u from User u left JOIN FETCH u.profiles")
    List<User> findAllWithProfiles();

    User findByLogin(String login);

    List<User> findAllByFirstNameAndLastName(String firstName,String lastName);

    @Query("""
            SELECT u from User u  left join u.profiles p
            where lower(u.login) like :search 
            or lower(u.firstName) like :search 
            or lower(u.lastName) like :search
            or lower(p.name) like :search
    """)
    List<User> search(String search);

    @Query("SELECT u from User u where u.login= :loginOrEmail or u.email= :loginOrEmail")
    Optional<User> findByLoginEmail(String loginOrEmail);
}
