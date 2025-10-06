package fr.caensup.portfolio.repositories;

import fr.caensup.portfolio.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.UUID;

public interface UserRepository extends JpaRepository<User, UUID> {

    User findByLogin(String login);
    @Query("""
            SELECT u from User u  left join u.profiles p
            where lower(u.login) like :search 
            or lower(u.firstName) like :search 
            or lower(u.lastName) like :search
            or lower(p.name) like :search
    """)
    List<User> search(String search);
}
