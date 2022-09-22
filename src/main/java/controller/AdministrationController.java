package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdministrationController
 */
@WebServlet({ "/AdministrationController", "/controller" })
public class AdministrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdministrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user=request.getParameter("role");
		RequestDispatcher rd=null;
		if(user.equals("admin")||user.equals("manager")) {
			rd=request.getRequestDispatcher("/administration");
			rd.forward(request, response);
			}else {
			rd=request.getRequestDispatcher("/student");
			rd.forward(request, response);	
		}
	}

}
