package com.example.polyclinic.models;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "events")
@Data
public class Event {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "id")
    private Long id;

    @Column(name = "username")
    private String username;

    @Column(name = "name_of_doctor")
    private String name_of_doctor;

    @Column(name = "description")
    private String description;

    @Column(name = "time")
    private String time;

    @Column(name = "price")
    private String price;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.LAZY)
    @JoinColumn
    private User user;
}