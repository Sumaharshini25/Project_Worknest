package com.worknest;
import jakarta.persistance.*;
public class User {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;

    private String username;
    private String password;
    private String role; // ADMIN or USER

    // Getters and Setters
}