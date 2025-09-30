package fr.caensup.portfolio.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;
import java.util.UUID;

@Entity
@Getter @Setter
public class User {
    @Id
    private UUID id=UUID.randomUUID();

    @Column(length = 20)
    private String login;

    @Column(length = 20)
    private String firstName;

    @Column(length = 35)
    private String lastName;

    @OneToMany(mappedBy = "owner")
    private Set<Profile> profiles = new HashSet<>();

}
