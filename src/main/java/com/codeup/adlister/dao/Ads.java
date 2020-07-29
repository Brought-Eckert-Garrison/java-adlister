package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.sql.SQLException;
import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    // Find ads from specific user
    List<Ad> usersAds(int id);
    //Update ad
    boolean updateAd(Ad ad) throws SQLException;
//    target a specific ad
    Ad findAdById(int id) throws SQLException;
//    delete ad
    boolean deleteAd(int id) throws SQLException;


}
