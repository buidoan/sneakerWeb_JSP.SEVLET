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
 * Servlet implementation class detail
 */
@WebServlet(value = "/detail")
public class detail_control extends HttpServlet {


	

	public detail_control() {
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String pid = request.getParameter("pid");
		
		try {

			Product p = Dao.getProductByID(pid);
		
			List<Category> list1 = Dao.getAllcategory();
			Cookie arr[] = request.getCookies();

			List<Product> listS = new ArrayList<>();
			if (arr != null) {
				// add product from cookie to list
				for (Cookie o : arr) {
					if (o.getName().equals("id")) {
						String txt[] = o.getValue().split("-");
						for (String s : txt) {
							listS.add(Dao.getProductByID(s));
						}
					}

				}
				// increase amount of one product
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

			request.setAttribute("detail", p);
			request.setAttribute("listC", list1);
			request.getRequestDispatcher("Detail.jsp").forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
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
