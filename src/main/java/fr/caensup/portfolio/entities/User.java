package fr.caensup.portfolio.entities;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.*;

@Entity
@Getter
@Setter
public class User implements UserDetails {
    @Id
    private UUID id=UUID.randomUUID();

    @Column(length = 20, unique = true)
    private String login;

    @Column(length = 20)
    private String firstName;

    @Column(length = 35)
    private String lastName;

    @Column(length = 255)
    private String email;

    @Column(length = 255)
    private String password;

    @OneToMany(mappedBy = "owner",cascade = {CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REMOVE})
    private List<Profile> profiles = new ArrayList<>();

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return List.of();
    }

    @Override
    public String getPassword() {
        return password;
    }

    @Override
    public String getUsername() {
        return login;
    }

}
