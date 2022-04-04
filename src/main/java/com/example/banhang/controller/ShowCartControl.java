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
 * Servlet implementation class ShowCartControl
 */
@WebServlet(value = "/print")
public class ShowCartControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public ShowCartControl() {
		// TODO Auto-generated constructor stub
	}

	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException, ClassNotFoundException {
		response.setContentType("text/html;charset=UTF-8");
		Cookie arr[] = request.getCookies();

		List<Product> listS = new ArrayList<>();

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
		List<Category> list1 = Dao.getAllcategory();

		request.setAttribute("listS", listS);
		request.setAttribute("listC", list1);
		request.setAttribute("total", total);
		request.setAttribute("vat", 0.1 * total);
		request.setAttribute("sum", 1.1 * total);
		request.getRequestDispatcher("Cart.jsp").forward(request, response);

	}
	
	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the
	// + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request  servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request  servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException      if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			processRequest(request, response);
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
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
