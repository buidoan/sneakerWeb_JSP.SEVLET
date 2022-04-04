package com.example.banhang.controller;


import com.example.banhang.dao.Dao;
import com.example.banhang.entity.Account;

import java.io.IOException;




import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(value = "/LoginServlet")
public class LoginServlet extends HttpServlet {


	private Dao loginDao;

    public void init() {
        loginDao = new Dao();
    }

	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// take data from user input
		String username = request.getParameter("uname");
        String password = request.getParameter("pword");
     
        Account a = new Account();
       
        a.setUsername(username);
        a.setPassword(password);

        try {
            if (loginDao.validate(a)) //check if a exists or not
            {
                HttpSession session = request.getSession();//create a session
                 session.setAttribute("acc",a);//save a==acc at session
                 session.setMaxInactiveInterval(86400);//set time session active
                 request.getRequestDispatcher("home").forward(request, response);
            } else
            {
               
            	 request.setAttribute("mess", "tài khoản hoặc mật khẩu không đúng");
            	 request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

}
