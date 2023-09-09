package kr.bit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.bit.model.MemberDAO;

public class MemberDbcheckController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id=request.getParameter("id");
		MemberDAO dao=new MemberDAO();
		String dbDouble=dao.memberDbcheck(id);
		// ajax() 함수에 만들어놓은 콜백함수(dbCheck)로 응답이 됨
		response.getWriter().print(dbDouble);
		
		
		
		return null;
	}

}
