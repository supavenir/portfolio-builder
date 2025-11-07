package fr.caensup.portfolio.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.engine.internal.Cascade;

import java.util.*;

@Entity
@Getter @Setter
public class Profile {
    @Id
    private UUID id=UUID.randomUUID();

    @Column(length = 60)
    private String name;

    @Column(length = 1000)
    private String description;

    @Column(length = 30,unique = true)
    private String slug;

    @ManyToOne(optional = false)
    private User owner;

    @ManyToMany(cascade = {CascadeType.MERGE})
    private Set<Image> images=new HashSet<>();

    @ManyToOne(cascade = {CascadeType.PERSIST,CascadeType.MERGE})
    private Image photo;

    @ManyToMany(cascade = {CascadeType.MERGE})
    private Set<Template> templates=new HashSet<>();

    @OneToMany(cascade = {CascadeType.ALL}, orphanRemoval = true,mappedBy = "profile")
    private List<Section> sections=new ArrayList<>();
}
