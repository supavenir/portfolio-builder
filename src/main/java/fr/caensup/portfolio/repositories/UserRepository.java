package fr.caensup.portfolio.repositories;

import fr.caensup.portfolio.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface UserRepository extends JpaRepository<User, UUID> {
}
