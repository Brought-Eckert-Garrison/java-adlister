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

@WebServlet (name = "controllers.AdProfileServlet", urlPatterns = "/ad/profile/*")
public class AdProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idStr = req.getParameter("id");
        int id = Integer.parseInt(idStr);
        try {
            Ad ad = DaoFactory.getAdsDao().findAdById(id);
            User user = DaoFactory.getUsersDao().findUserById(ad.getUserId());
            req.setAttribute("user", user);
            req.setAttribute("ad", ad);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        req.getRequestDispatcher("/WEB-INF/adsProfileModal.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        req.getSession().setAttribute("adProfId", id);

        try {
            Ad ad = DaoFactory.getAdsDao().findAdById(id);
            User user = DaoFactory.getUsersDao().findUserById(ad.getUserId());
            req.setAttribute("user", user);
            req.setAttribute("ad", ad);
        } catch (SQLException e) {
            e.printStackTrace();
        }
//        resp.sendRedirect("/ad/profile");
        req.getRequestDispatcher("/WEB-INF/adsProfileModal.jsp").forward(req, resp);

    }
}
