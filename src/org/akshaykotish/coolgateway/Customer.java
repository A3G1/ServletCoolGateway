package org.akshaykotish.coolgateway;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Customer
 */
@WebServlet("/Customer")
public class Customer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Customer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("cusname");
		String age = request.getParameter("cusage");
		String contact= request.getParameter("cuscontact");
		String address = request.getParameter("cusaddress");
		String password = request.getParameter("cuspass");
		MYConnection mycon = new MYConnection();
		try {
				if(mycon.connect() != null) {
						PreparedStatement ps = mycon.connect().prepareStatement("INSERT INTO customers (name, age, contact, address, password) VALUES (?, ?, ?, ?, ?)");
						ps.setString(1, name);
				        ps.setString(2, age);
				        ps.setString(3, contact);
				        ps.setString(4, address);
						ps.setString(5, password);
				        ps.executeUpdate();
				        ps.close();
			        	response.getWriter().append("Done");
				}
        }
        catch (SQLException e) {
			// TODO Auto-generated catch block
        	response.getWriter().append(e.toString());
			
		}
	}

}
