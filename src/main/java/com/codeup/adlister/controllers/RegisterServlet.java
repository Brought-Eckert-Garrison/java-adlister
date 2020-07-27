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
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");
        User duplicate = DaoFactory.getUsersDao().findByUsername(username);
        String hashedPw = BCrypt.hashpw(password, BCrypt.gensalt(12));
//        String message = null;


        // validate input
        boolean inputHasErrors = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty();

        boolean passwordsNotValid = !BCrypt.checkpw(passwordConfirmation, hashedPw);


        if (inputHasErrors) {
//            message = "Not all fields were filled in";
//            request.setAttribute("message", message);
            response.sendRedirect("/register");
            JOptionPane.showMessageDialog(null, "Not all fields were properly filled in. Please try again! : )");
        } else if(passwordsNotValid){
            response.sendRedirect("/register");
            JOptionPane.showMessageDialog(null, "Passwords did not match. Please re-enter your passwords! : )");
        }else if(duplicate != null) {
//            message = "This user already exists";
//            request.setAttribute("message", message);
            response.sendRedirect("/register");
            JOptionPane.showMessageDialog(null, "This username already exists. Please enter something original! : )");
        } else {
//            message = " ";
//            request.setAttribute("message", message);

            User user = new User(username, email, hashedPw);
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");
        }


    }
}
