package fr.caensup.portfolio.entities;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Entity
public class Establishment {
    @Id
    private UUID id=UUID.randomUUID();

    @Column(length = 60)
    private String name;

    @Column(length = 1000)
    private String location;

    @OneToMany(mappedBy = "establishment")
    private List<Item> items=new ArrayList<>();

}
