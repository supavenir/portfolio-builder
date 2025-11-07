package fr.caensup.portfolio.entities;

import jakarta.persistence.*;

import java.util.*;

@Entity
public class Image {
    @Id
    private UUID id=UUID.randomUUID();

    @Column(length = 255)
    private String url;

    @ManyToMany(mappedBy = "images")
    private Set<Profile> profiles=new HashSet<>();

    @OneToMany(mappedBy = "photo")
    private List<Profile> photoProfiles=new ArrayList<>();
}
