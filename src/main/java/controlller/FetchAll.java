package controlller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MarksCardDao;
import dto.MarksDto;



@WebServlet("/fetchall")
public class FetchAll extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	//super.doGet(req, resp);
	
		 
         
         
         MarksCardDao dao = new MarksCardDao();
         List<MarksDto> list = dao.fetchall();
 		
           
         req.setAttribute("student list", list);
         RequestDispatcher rq=req.getRequestDispatcher("fetchall1.jsp");
         rq.forward(req, resp);
         
		
	}
}
