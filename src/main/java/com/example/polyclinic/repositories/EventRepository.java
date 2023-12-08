package com.example.polyclinic.repositories;

import com.example.polyclinic.models.Event;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface EventRepository extends JpaRepository<Event, Long> {
    List<Event> findByDescription(String description);
}