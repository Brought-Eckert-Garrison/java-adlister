package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("reg_username");
        String email = request.getParameter("email");
        String password = request.getParameter("reg_password");
        String passwordConfirmation = request.getParameter("confirm_password");
        String hashPw = BCrypt.hashpw(password, BCrypt.gensalt(12));
        User duplicate = DaoFactory.getUsersDao().findByUsername(username);

//        String message = null;

        // validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty();

        boolean passwordsNotValid = !BCrypt.checkpw(passwordConfirmation, hashPw);


        if (inputHasErrors) {
            response.sendRedirect("/register");
            JOptionPane.showMessageDialog(null, "Not all fields were properly filled in. Please try again! : )");
        } else if(passwordsNotValid){
            response.sendRedirect("/register");
            JOptionPane.showMessageDialog(null, "Passwords did not match. Please re-enter your passwords! : )");
        }else if(duplicate != null) {
            response.sendRedirect("/register");
            JOptionPane.showMessageDialog(null, "This username already exists. Please enter something original! : )");
        } else {

            User user = new User(username, email, hashPw);
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");
        }


    }
}
