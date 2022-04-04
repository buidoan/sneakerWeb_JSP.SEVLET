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
 * /** Servlet implementation class control
 */
@WebServlet(name = "home",value = "/home" )
public class HomeServlet extends HttpServlet {


	public HomeServlet() {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		try {

			List<Product> list = Dao.getAllProduct();
			List<Category> list1 = Dao.getAllcategory();

			request.setAttribute("listP", list);
			request.setAttribute("listC", list1);
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
			request.getRequestDispatcher("Homepage.jsp").forward(request, response);

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("loi");
		}
	}



}
