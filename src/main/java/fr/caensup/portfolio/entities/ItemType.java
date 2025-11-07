package fr.caensup.portfolio.entities;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Entity
public class ItemType {
    @Id
    private UUID id=UUID.randomUUID();

    @Column(length = 60)
    private String name;

    @OneToMany(mappedBy = "type")
    private List<Item> items=new ArrayList<>();
}
