package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "AdUpdateServlet", urlPatterns = "/ad-update")
public class AdUpdateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/profile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          long id = (long) req.getAttribute("ad");
          String id2 = req.getParameter("ad");

        System.out.println(id);
        System.out.println(id2);

//        System.out.println(current);
//        int id = Integer.parseInt(req.getParameter("id"));
//        System.out.println(DaoFactory.getAdsDao().findAdById(id));

        String title = req.getParameter("title");
        String description = req.getParameter("description");

//        Ad ad = new Ad(id, title, description);
//        try {
//            DaoFactory.getAdsDao().updateAd(ad);
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }

    }
}
