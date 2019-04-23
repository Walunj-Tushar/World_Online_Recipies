package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DbConnection;

@WebServlet("/UserComments")
public class UserComments extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserComments() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String Name,CommentEmail,Message;
	

	public void init(ServletConfig config) throws ServletException {
		try {

			con = DbConnection.getConnection();
			System.out.println("connection is " + con);

		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		Name = request.getParameter("Name");
		CommentEmail = request.getParameter("CommentEmail");
		Message = request.getParameter("Message");

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `worldrecipes`.`userscomments` (`Name`, `CommentEmail`, `Message`) VALUES ( '"
					+ Name
					+ "','"
					+ CommentEmail
					+ "','"
					+ Message + "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
				response.sendRedirect("index.jsp");
   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
