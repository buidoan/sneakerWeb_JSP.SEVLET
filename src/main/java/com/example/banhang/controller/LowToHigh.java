package com.example.banhang.controller;

import com.example.banhang.dao.Dao;
import com.example.banhang.entity.Category;
import com.example.banhang.entity.Product;

import java.io.IOException;


import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class LowToHigh
 */
@WebServlet(value = "/lth")
public class LowToHigh extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public LowToHigh() {
        // TODO Auto-generated constructor stub
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        //tam thoi load ra 3 san pham truoc 
      
   
        List<Product> list = Dao.getAscendingPrice();
        PrintWriter out = response.getWriter();

        for (Product o : list) {
            out.println("<div class=\"product col l-2-4 m-4 c-6\">\r\n"
            		+ "										<a class=\"home-product-item\" href=\"detail?pid="+o.getId()+"\">\n"
            		+ "											<div style=\"background-image: url("+o.getImage()+")\"\n"
            		+ "												class=\"home-product-item-img\"></div>\n"
            	
            		+ "											<h4 class=\"home-product-item-name\">"+o.getName()+"</h4>\r\n"
            		+ "											<div class=\"home-product-price\">\r\n"
            		+ "												<span class=\"old-price\">2.000.000đ</span> <span\r\n"
            		+ "													class=\"new-price\">"+o.getPrice()+"</span>\r\n"
            		+ "											</div>\r\n"
            		+ "											<div class=\"home-product-item-action\">\r\n"
            		+ "												<span class=\"home-product-item-like home-product-item-liked\">\r\n"
            		+ "													<i class=\"home-product-item-like-empty far fa-heart\"></i> <i\r\n"
            		+ "													class=\"home-product-item-like-fill  fas fa-heart\"></i>\r\n"
            		+ "												</span>\r\n"
            		+ "												<div class=\"home-product-item-rate-star\">\r\n"
            		+ "													<i class=\"golden-star fas fa-star\"></i> <i\r\n"
            		+ "														class=\"golden-star fas fa-star\"></i> <i\r\n"
            		+ "														class=\"golden-star fas fa-star\"></i> <i\r\n"
            		+ "														class=\"fas fa-star\"></i> <i class=\"fas fa-star\"></i>\r\n"
            		+ "												</div>\r\n"
            		+ "												\r\n"
            		+ "												<span class=\"home-product-item-sold\">80 đã bán</span>\r\n"
            		+ "												\r\n"
            		+ "											</div>\r\n"
            		+ "\r\n"
            		+ "											<div class=\"home-product-item-orinal\">\r\n"
            		+ "												<span class=\"home-product-item-brand\">Fly</span> <span\r\n"
            		+ "													class=\"home-product-item-country\">Trung Quốc </span>\r\n"
            		+ "											</div>\r\n"
            		+ "											<div class=\"home-product-item-favorite\">\r\n"
            		+ "												<i class=\"home-product-item-favorite-icon fas fa-check\"></i>\r\n"
            		+ "												<span>Yêu thích</span>\r\n"
            		+ "											</div>\r\n"
            		+ "											<div class=\"home-product-item-saleoff\">\r\n"
            		+ "												<span class=\"home-product-item-saleoff-percent\">10%</span> <span\r\n"
            		+ "													class=\"home-product-item-saleoff-label\">GIẢM</span>\r\n"
            		+ "											</div>\r\n"
            		+ "										</a>\r\n"
            		+ "									</div>");
        }
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 processRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 processRequest(request, response);
	}
	

}
