package fr.caensup.portfolio.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

@Entity
public class Template {
    @Id
    private UUID id=UUID.randomUUID();

    @Column(length = 60)
    private String name;

    @Column(length = 1000)
    private String description;

    @Column(length = 10485760)
    private String structure;

    @Column(length = 10485760)
    private String presentation;

    @Column
    private boolean portfolio;

    @ManyToMany(mappedBy = "templates")
    private Set<Profile> profiles=new HashSet<>();
}
