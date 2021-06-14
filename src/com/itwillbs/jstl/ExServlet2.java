package com.itwillbs.jstl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//에노테이션 : 특정 역할을 하는 동작
//@WebServlet("*.aa") -> web.xml에 매핑하는 것과 같은 동작
// => 서블릿 3.0이후에만 사용가능

@WebServlet("/exam")
public class ExServlet2 extends HttpServlet{
	
	//http://localhost:8080/JSTL_EL_JSP/test.ex
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGET() 메서드 호출!");
		
		
		// 전화번호 : 010-1234-7899 set2.jsp페이지에 전달해서 출력
		String tel = "010-1234-7899";
		
		//request 영역에 저장
		request.setAttribute("tel", tel);
		
		// 페이지 이동
		RequestDispatcher dis
			= request.getRequestDispatcher("/core/set2.jsp");
		
		dis.forward(request, response);
	
	}
	
}
