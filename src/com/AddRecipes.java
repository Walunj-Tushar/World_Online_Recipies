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

@WebServlet("/AddRecipes")
public class AddRecipes extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddRecipes() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String Name,Email,RecipeName,RecipeType,Type,RecipeImage,Ingredients,Procedure;

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
		Email = request.getParameter("Email");
		RecipeName = request.getParameter("RecipeName");
		RecipeType = request.getParameter("RecipeType");
		Type = request.getParameter("Type");
		RecipeImage = request.getParameter("RecipeImage");
		Ingredients = request.getParameter("Ingredients");
		Procedure = request.getParameter("Procedure");
		

		try {
			Statement st = con.createStatement();
			
			int r = st.executeUpdate("INSERT INTO `worldrecipes`.`addrecipe` (`Name`,`Email`,`RecipeName`, `RecipeType`,`Type`,`RecipeImage`, `Ingredients`,`Procedure`) VALUES ( '"
					+ Name
					+ "','"
					+ Email 
					+ "','"
					+ RecipeName
					+ "','"
					+ RecipeType 
					+ "','"
					+ Type
					+ "','"
					+ RecipeImage
					+ "','"
					+ Ingredients + "','"+Procedure+"');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("UserHome.jsp");
   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
