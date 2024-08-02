package com.tom.rentify.entity;

import javax.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.HashSet;
import java.util.Set;

@Entity
@Getter
@Setter
@Data
public class Property {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String propertyName;
    private String area;
    private int bedrooms;
    private int bathrooms;
    @Column(columnDefinition = "LONGTEXT")
    private String nearby;
    private Long sellerId;
    private String sellerName;
    private Long sellerNumber;
    private Long price;
    @Lob
    private byte[] image;

    @ElementCollection
    private Set<String> likes = new HashSet<>();

    // Getters and Setters
    public void addLike(String email) {
        likes.add(email);
    }

    public void removeLike(String email) {
        likes.remove(email);
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }
}
