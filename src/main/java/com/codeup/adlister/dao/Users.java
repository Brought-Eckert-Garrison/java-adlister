package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;

import java.sql.SQLException;
import java.util.List;

public interface Users {
    User findByUsername(String username);
    User findUserById(long id);
    Long insert(User user);
    boolean updateUser(User user) throws SQLException;
    boolean deleteUser(int id) throws SQLException;
    List<User> allUsers();
    
}
