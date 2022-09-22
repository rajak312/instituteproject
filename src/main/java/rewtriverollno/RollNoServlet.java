package rewtriverollno;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RollNoServlet
 */
@WebServlet({ "/RollNoServlet", "/roll" })
public class RollNoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RollNoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
    Connection connection;
 	public void init() throws ServletException {
 		// TODO Auto-generated method stub
 		try {
 			Class.forName("oracle.jdbc.driver.OracleDriver");
 			connection=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","c##lalit","03012000");
 		    System.out.println("connected");
 		} catch (ClassNotFoundException | SQLException e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
 	}

 	/**
 	 * @see Servlet#destroy()
 	 */
 	public void destroy() {
 		// TODO Auto-generated method stub
 		if(connection!=null) {
 			try {
 				
 				connection.close();
 			} catch (SQLException e) {
 				// TODO Auto-generated catch block
 				e.printStackTrace();
 			}
 		}
 	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
 		String get_rollno="select std_id,password from student_records where fname=? and lname=?";
 		String fname=request.getParameter("fname");
 		String lname=request.getParameter("lname");
 		
 		try {
			PreparedStatement stmt=connection.prepareStatement(get_rollno);
			stmt.setString(1,fname);
			stmt.setString(2,lname);
			ResultSet rs=stmt.executeQuery();
			PrintWriter pw=response.getWriter();
			while(rs.next()) {
			   pw.println("<html><body align=center text=black bgcolor=yellow ><h1>Your Userid is : "+rs.getString(1)+"</h1><h3><p><a href='login.jsp'>click here<a> for login</p></h3></body></html>");
			   //pw.println(rs.getString(2));
			  
			}
		} catch (SQLException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
