package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;
<<<<<<< HEAD
import com.codeup.adlister.models.Config;
=======
import com.codeup.adlister.models.User;
>>>>>>> master
import com.mysql.cj.jdbc.Driver;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {
    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUsername(),
                config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public List<Ad> all() {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads");
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }
<<<<<<< HEAD
    
=======

    @Override
    public List<Ad> usersAds(int id) {
        PreparedStatement stmt = null;
        try {
            stmt = connection.prepareStatement("SELECT * FROM ads WHERE user_id = ?");
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            return createAdsFromResults(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving all ads.", e);
        }
    }

    @Override
    public Ad findAdById(int id) {
        String query = "SELECT * FROM ads WHERE user_id = ? LIMIT 1";
        try {
            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setInt(1, id);
            return extractAd(stmt.executeQuery());
        } catch (SQLException e) {
            throw new RuntimeException("Error finding a user by username", e);
        }
    }

    @Override
    public boolean deleteAd(int id) throws SQLException {
        String DELETE_ADS_SQL = "DELETE FROM ads WHERE id = ?";
        boolean rowDeleted;
        try {
                PreparedStatement statement = connection.prepareStatement(DELETE_ADS_SQL);
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            throw new RuntimeException("Error targeting id", e);
        }
        return rowDeleted;
    }

    @Override
    public boolean updateAd(Ad ad) throws SQLException{
        boolean rowUpdated;
        String updateUsersSql = "update ads set title = ?, description = ? where id = ?";

        try  {
            PreparedStatement statement = connection.prepareStatement(updateUsersSql);
            statement.setString(1, ad.getTitle());
            statement.setString(2, ad.getDescription());
            statement.setLong(3, ad.getId());
            statement.executeUpdate();
            rowUpdated = statement.executeUpdate() > 0;
        } catch (SQLException e){
            throw new RuntimeException("error", e);
        }
        return rowUpdated;
    }


>>>>>>> master
    @Override
    public Long insert(Ad ad) {
        try {
            String insertQuery = "INSERT INTO ads(user_id, title, description) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
            stmt.setLong(1, ad.getUserId());
            stmt.setString(2, ad.getTitle());
            stmt.setString(3, ad.getDescription());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    private Ad extractAd(ResultSet rs) throws SQLException {
        return new Ad(
            rs.getLong("id"),
            rs.getLong("user_id"),
            rs.getString("title"),
            rs.getString("description")
        );
    }

    private List<Ad> createAdsFromResults(ResultSet rs) throws SQLException {
        List<Ad> ads = new ArrayList<>();
        while (rs.next()) {
            ads.add(extractAd(rs));
        }
        return ads;
    }
    
    @Override
    public Ad findAdById(int id) throws SQLException {
        String query = "SELECT * FROM ads WHERE id = ?";
        PreparedStatement stmt = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
        stmt.setInt(1, id);
        stmt.executeQuery();
        ResultSet rs = stmt.getGeneratedKeys();
        rs.next();
        
        int adId = rs.getInt(1);
        int userId = rs.getInt(2);
        String title = rs.getString(3);
        String description = rs.getString(4);
    
        return new Ad(adId, userId, title, description);
    }
}
