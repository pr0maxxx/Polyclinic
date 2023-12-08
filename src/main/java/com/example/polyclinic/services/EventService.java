package com.example.polyclinic.services;


import com.example.polyclinic.models.Event;
import com.example.polyclinic.repositories.EventRepository;
import com.example.polyclinic.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class EventService {
    private final UserRepository userRepository;
    private final EventRepository eventRepository;

    public List<Event> listEvents(String description) {
        if (description != null) return eventRepository.findByDescription(description);
        return eventRepository.findAll();
    }

    public void saveEvent(Event event){
        log.info("Saving new Event. Title: {}; Author email: {}", event.getDescription());
        eventRepository.save(event);
    }

    public void deleteEvent(Long id) {
        eventRepository.deleteById(id);
    }

    public Event getEventById(Long id) {
        return eventRepository.findById(id).orElse(null);
    }

}