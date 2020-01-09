package fr.climbing.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.climbing.model.Topo;

public interface TopoRepository extends JpaRepository<Topo, Long> {
    Topo findByToponame(String toponame);
}
