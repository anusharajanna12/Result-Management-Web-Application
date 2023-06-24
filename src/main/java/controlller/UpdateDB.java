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


@WebServlet("/updatedb")
public class UpdateDB extends HttpServlet {
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	  
	  String rno = req.getParameter("sid");
		String sname = req.getParameter("sname");
		String fname= req.getParameter("fname");
		String slname = req.getParameter("slname");
		String num1 = req.getParameter("num");
		String date= req.getParameter("date");
		String gender = req.getParameter("gender");
		String rkannada = req.getParameter("kannada");
		String renglish= req.getParameter("english");
		String rhindi = req.getParameter("hindi");
		String rmathematics = req.getParameter("mathematics");
		String rsocial= req.getParameter("social");
		String rscience= req.getParameter("science");

		int urno = Integer.parseInt(rno);
		long unum = Long.parseLong(num1);
		int ukannada = Integer.parseInt(rkannada);
		int uenglish = Integer.parseInt(renglish);
		int uhindi = Integer.parseInt(rhindi);
		int umathematics = Integer.parseInt(rmathematics);
		int usocial = Integer.parseInt(rsocial);
		int uscience = Integer.parseInt(rscience);
		int utotalmarks = ukannada+uenglish+uhindi+umathematics+usocial+uscience;

		MarksDto dto = new MarksDto();
		dto.setRegister_number(urno);
		dto.setStudent_name(sname);
		dto.setFather_name(fname);
		dto.setSchool_name(slname);
		dto.setPhone_number(unum);
		dto.setDate_of_birth(date);
		dto.setGener(gender);
		dto.setKannada(ukannada);
		dto.setEnglish(uenglish);
		dto.setHindi(uhindi);
		dto.setMathematics(umathematics);
		dto.setSocialscience(usocial);
		dto.setScience(uscience);
		dto.setTotalmarks(utotalmarks);
		
		MarksCardDao dao = new MarksCardDao();
		dao.update(dto);
		List<MarksDto> l1= dao.fetchall();


		req.setAttribute("student list", l1);
		resp.getWriter().print("<h1>DATA HAS BEEN UPDATED</h1>");

		RequestDispatcher dispatcher= req.getRequestDispatcher("fetchall1.jsp");
		dispatcher.include(req, resp);
}
}
