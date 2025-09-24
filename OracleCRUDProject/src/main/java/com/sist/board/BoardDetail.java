package com.sist.board;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
/*
 *    Spring 
 *      @RequestMapping
 *      @GetMapping
 *      @PostMapping 
 */

@WebServlet("/BoardDetail")
public class BoardDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<link rel=stylesheet href=\"css/table.css\">");
		out.println("<style type=text/css>");
		out.println("h1 {text-align:center}");
		out.println("table{margin:0px auto}");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("<h1>내용보기</h1>");
		out.println("<table id=table_content width=600>");
		
		out.println("<tr>");
		out.println("<th width=20%>번호</th>");
		out.println("<td width=30%></td>");
		out.println("<th width=20%>작성일</th>");
		out.println("<td width=30%></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th width=20%>이름</th>");
		out.println("<td width=30%></td>");
		out.println("<th width=20%>조회수</th>");
		out.println("<td width=30%></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<th width=20%>제목</th>");
		out.println("<td colspan=3></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td colspan=4 height=200 valign=top align=left></td>");
		out.println("</tr>");
		
		out.println("<tr>");
		out.println("<td colspan=4 align=right>");
		out.println("<a href=\"#\">수정</a>&nbsp;");
		out.println("<a href=\"#\">삭제</a>&nbsp;");
		out.println("<a href=\"javascript:history.back()\">목록</a>");
		out.println("</td>");
		out.println("</tr>");
		out.println("</table>");
	}

}
