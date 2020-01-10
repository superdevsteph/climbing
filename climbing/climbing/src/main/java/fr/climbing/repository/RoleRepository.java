package fr.climbing.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.climbing.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
