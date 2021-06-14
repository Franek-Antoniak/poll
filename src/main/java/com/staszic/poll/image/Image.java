package com.staszic.poll.image;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.UUID;

@JsonInclude(JsonInclude.Include.NON_EMPTY)
@Getter
@Setter
@Entity
@Table(name = "Images")
public class Image {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private UUID uniqueId;
    private Integer votes = 0;
    private String author;
    private String path;

    public void vote() {
        votes++;
    }

    @PrePersist
    private void onCreate() {
        uniqueId = java.util.UUID.randomUUID();
    }
}



