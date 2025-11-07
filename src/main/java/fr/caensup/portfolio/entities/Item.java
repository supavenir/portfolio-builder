package fr.caensup.portfolio.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

import java.time.LocalDate;
import java.util.UUID;

@Entity
public class Item {
    @Id
    private UUID id=UUID.randomUUID();

    @Column(length = 150)
    private String title;

    @Column(length = 3000)
    private String description;

    @Column(nullable = true)
    private LocalDate startDate;

    @Column(nullable = true)
    private LocalDate endDate;

    private int order;

    @ManyToOne(optional = false)
    private Section section;

    @ManyToOne(optional = false)
    private ItemType type;
}
