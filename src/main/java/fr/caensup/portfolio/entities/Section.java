package fr.caensup.portfolio.entities;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Entity
public class Section {
    @Id
    private UUID id=UUID.randomUUID();

    @Column(length = 150)
    private String title;

    private int order;

    @ManyToOne(optional = false)
    private Profile profile;

    @OneToMany(cascade = {CascadeType.ALL},orphanRemoval = true,mappedBy = "section")
    private List<Item> items=new ArrayList<>();

}
