package com.example.banhang.controller;

import com.example.banhang.dao.Dao;
import com.example.banhang.entity.Category;
import com.example.banhang.entity.Product;

import java.io.IOException;


import java.util.ArrayList;
import java.util.List;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class category_control
 */
@WebServlet(value = "/category")
public class category_control extends HttpServlet {


    /**
     * Default constructor. 
     */
    public category_control() {
        // TODO Auto-generated constructor stub
    }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	
	 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
		 response.setContentType("text/html;charset=UTF-8");
		 String CateID=request.getParameter("cid");
		 try {
			List<Product> list = Dao.getAllProductByID(CateID);
			List<Category> list1 = Dao.getAllcategory();
			Cookie arr[] = request.getCookies();

			List<Product> listS = new ArrayList<>();
			if (arr != null) {
				// add Product from cookie to list
				for (Cookie o : arr) {
					if (o.getName().equals("id")) {
						String txt[] = o.getValue().split("-");
						for (String s : txt) {
							listS.add(Dao.getProductByID(s));
						}
					}

				}
				// increase amount of one Product
				for (int i = 0; i < listS.size(); i++) {
					int count = 1;
					for (int j = i + 1; j < listS.size(); j++) {
						if (listS.get(i).getId() == listS.get(j).getId()) {
							count++;
							listS.remove(j);
							j--;
						}

					}
					listS.get(i).setAmount(count);
				}
				//
				double total = 0;
				for (Product o : listS) {
					total = total + o.getAmount() * o.getPrice();
				}
			} else {
				listS = new ArrayList<>();
			}

			request.setAttribute("listS", listS);

			request.setAttribute("listP", list);
			request.setAttribute("tag", CateID);
			request.setAttribute("listC", list1);
			request.getRequestDispatcher("Homepage.jsp").forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	 }

	    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	    /**
	     * Handles the HTTP <code>GET</code> method.
	     *
	     * @param request servlet request
	     * @param response servlet response
	     * @throws ServletException if a servlet-specific error occurs
	     * @throws IOException if an I/O error occurs
	     */
	    @Override
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }

	    /**
	     * Handles the HTTP <code>POST</code> method.
	     *
	     * @param request servlet request
	     * @param response servlet response
	     * @throws ServletException if a servlet-specific error occurs
	     * @throws IOException if an I/O error occurs
	     */
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        processRequest(request, response);
	    }

	    /**
	     * Returns a short description of the servlet.
	     *
	     * @return a String containing servlet description
	     */
	    @Override
	    public String getServletInfo() {
	        return "Short description";
	    }// </editor-fold>

}
