package com.sist.main;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.sist.dao.*;
import com.sist.vo.*;
@WebServlet("/FoodDetail")
public class FoodDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   response.setContentType("text/html;charset=UTF-8");
	   PrintWriter out=response.getWriter();
	   
	   // 사용자가 보내준 데이터 읽기
	   String fno=request.getParameter("fno");
	   // request : 사용자 정보 (IP , PORT)
	   // 사용자가 보내준 데이터를 가지고 있다 
	   // Map방식  ==> ?fno=1  => map.put("fno",1)
	   // DB연동 
	   FoodVO vo=FoodDAO.foodDetailData(Integer.parseInt(fno));
	   // vo에 있는 데이터를 브라우저에 출력 
	   out.println("<html>");
	   out.println("<head>");
	   out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">");
	   out.println("<style type=text/css>");
	   out.println(".container{margin-top:50px;}");
	   out.println(".row{width:800px;margin:0px auto;}");
	   out.println("</style>");
	   out.println("</head>");
	   out.println("<body>");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("");
	   out.println("</body>");
	   out.println("</html>");
	   
	   
	}

}
