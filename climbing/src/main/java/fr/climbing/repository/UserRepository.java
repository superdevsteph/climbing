package fr.climbing.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.climbing.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
