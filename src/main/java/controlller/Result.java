package controlller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MarksCardDao;
import dto.MarksDto;

@WebServlet("/result")
public class Result extends HttpServlet {
     @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
   	  String rno1 = req.getParameter("rno");
		int urno = Integer.parseInt(rno1);
		
		MarksCardDao dao = new MarksCardDao();
		  MarksDto result=dao.fetch(urno);
		  
		  req.setAttribute("result", result);
	         RequestDispatcher rq=req.getRequestDispatcher("resultsheet.jsp");
	         rq.forward(req, resp);

    }
}
