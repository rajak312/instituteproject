package login;

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
 * Servlet implementation class LoginServlet
 */
@WebServlet({ "/LoginServlet", "/login" })
public class StudentLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */Connection connection;
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
			try {
				String query_uname="select fname from student_records where std_id=? and password=?";
				String userid=request.getParameter("userid");
				String pword=request.getParameter("pword");
				PreparedStatement pstmt=connection.prepareStatement(query_uname);
				pstmt.setString(1, userid);
				pstmt.setString(2,pword);
				ResultSet rs=pstmt.executeQuery();
				PrintWriter pw=response.getWriter();
				while(rs.next()) {
					RequestDispatcher rd=request.getRequestDispatcher("student.jsp");
					rd.forward(request, response);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
 

}
