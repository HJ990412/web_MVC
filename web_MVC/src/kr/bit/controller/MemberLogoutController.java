package kr.bit.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberLogoutController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		// 세션 가지고온 후 세션 제거
		// 세션 제거방법
		// 1. 강제로
		String ctx=request.getContextPath(); //MVC06
		request.getSession().invalidate();
		// 2. 브라우저 종료 (세션id가 브라우저 쿠키에 저장)
		// 3. 세션이 종료될때까지 기다리는 것(세션타임아웃 : 30분)
		return "login1";
	}

}
