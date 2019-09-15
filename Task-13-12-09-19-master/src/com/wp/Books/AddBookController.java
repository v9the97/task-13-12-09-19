package com.wp.Books;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class AddBookServlet
 */
@WebServlet("/AddBookController")
public class AddBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bcode=request.getParameter("bcode");
        String btitle=request.getParameter("btitle");
        String author=request.getParameter("author");
        String subject=request.getParameter("subject");
        String price=request.getParameter("price");
        
    	BookDAO dao=new BookDAO();
    	
    	Book book=new Book(Integer.parseInt(bcode),btitle,author,subject,Integer.parseInt(price));
    	dao.saveBook(book);
    	
    	request.setAttribute("add",book);
    	
    	RequestDispatcher rd=request.getRequestDispatcher("view.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
