package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
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

@WebServlet(name = "controllers.AdsPageServlet", urlPatterns = "/adsHome")
public class AdsPageServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//		int id = Integer.parseInt(request.getParameter("id"));
//		System.out.println(id);
//		Ads adsDao = DaoFactory.getAdsDao();
//		Ad adToUse = null;
//		User adAuthor = null;
//
//		try {
//			adToUse = adsDao.findAdById(id);
//			adAuthor = DaoFactory.getUsersDao().findUserById(adToUse.getId());
//		}
//		catch (SQLException e) {
//			e.printStackTrace();
//		}
//
//		request.setAttribute("adAuthor", adAuthor);
//		request.setAttribute("ads", adToUse);
		request.setAttribute("ads", DaoFactory.getAdsDao().all());
		request.getRequestDispatcher("/WEB-INF/adsPage.jsp").forward(request, response);
	}
}
