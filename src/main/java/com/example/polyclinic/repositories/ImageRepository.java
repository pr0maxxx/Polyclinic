package com.example.polyclinic.repositories;

import com.example.polyclinic.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}