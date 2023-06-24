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

@WebServlet("/delete")
public class Delete extends HttpServlet {
 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doGet(req, resp);

		String id=req.getParameter("id");
		int sid= Integer.parseInt(id);
		
		MarksCardDao dao = new MarksCardDao();
		
		dao.deleteall(sid);
		List<MarksDto> l1= dao.fetchall();


		req.setAttribute("student list", l1);
		resp.getWriter().print("<h1>DATA HAS BEEN DELETED</h1>");

		RequestDispatcher dispatcher= req.getRequestDispatcher("fetchall1.jsp");
		dispatcher.include(req, resp);

}
}
