package recorddao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet({ "/StudentServlet", "/student" })
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
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
 		try {
 		String fname=request.getParameter("fname");
 		String insert_student_record="insert into student_records values(?,?,?,?,?,?,?,students_sequence.nextval,?)";
 		
 		String lname=request.getParameter("lname");
 		@SuppressWarnings("deprecation")
 		java.util.Date selectedDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("dob"));  
 	    System.out.println(selectedDate);
 	    java.util.Date dateUtil = new Date();
 	    java.sql.Date dob = new java.sql.Date(dateUtil.getTime());
 
 		String country=request.getParameter("country");
 		String city=request.getParameter("city");
 		String state=request.getParameter("state");
 		String password=request.getParameter("pword");
 		String role=request.getParameter("role");
 		PrintWriter pw=response.getWriter();
		
 		
		
			PreparedStatement pstmt=connection.prepareStatement(insert_student_record);
			pstmt.setString(1,fname);
			pstmt.setString(2, lname);
			pstmt.setDate(3, dob);
			pstmt.setString(4,state);
			pstmt.setString(5,city);
			pstmt.setString(6,country);
			pstmt.setString(7,password);
			pstmt.setString(8, role);
			int count=pstmt.executeUpdate();
			RequestDispatcher rd=request.getRequestDispatcher("/roll");
			rd.forward(request, response);

		} catch (SQLException | ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 	}

}
