<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.sist.dao.*,com.sist.vo.*" %>
<%--
   Cookie : 내장 객체가 아니다 => 필요시에 생성 
   1. 생성 
      Cookie cookie=new Cookie("키","값")
                               --- -----
                                   | 문자열 
                               |중복없이 => 중복되는 경우 덮어쓴다
   2. 기간 설정 
      cookie.setMaxAge(초단위) 
           => 60*60*24
   3. 브라우저로 전송 
      response.addCookie(cookie)
   ------------------------------------------
   1. 쿠키 읽기
      Cookie[] cookies=request.getCookies() 
   2. 소멸 
      cookie.setMaxAge(0)
 --%>
<%
   //1. 사용자가 보낸 데이터를 받는다 => 패이지 요청
   // food_list.jsp?page=2
   String strPage=request.getParameter("page");
   // 첫페이지 문제 => 페이지 지정이 어렵다 => default
   if(strPage==null)
	   strPage="1";
   // 1-1. 현재페이지를 저장 
   int curpage=Integer.parseInt(strPage);
   //2. 데이터베이스 값을 읽어 온다 
   int rowSize=12;
   int start=(rowSize*curpage)-(rowSize-1); // 1 , 13 , 25 ..
   int end=rowSize*curpage;// 12 , 24 , 36...
   Map<String,Integer> map=new HashMap<String,Integer>();
   map.put("start",start);
   map.put("end",end);
   //2-1 목록 읽기
   List<FoodVO> list=FoodDAO.foodListData(map);
   //2-2 총페이지 읽기
   int totalpage=FoodDAO.foodTotalPage();
   
   // 블록별 처리 
   final int BLOCK=10;
   int startPage=((curpage-1)/BLOCK*BLOCK)+1;
   int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="cookie.css">
<style type="text/css">
.container{
  margin-top: 50px;
}
.row {
  width: 960px;
  margin: 0px auto;
}

p {
 overflow: hidden;
 white-space: nowrap;
 text-overflow: ellipsis;
}
</style>
</head>
<body>
  <div class="container">
   <div class="row">
    <%
       for(FoodVO vo:list)
       {
    %>
         <div class="col-md-3">
		    <div class="thumbnail">
		      <a href="#">
		        <img src="<%= vo.getPoster()%>" style="width:230px;height: 150px">
		        <div class="caption">
		          <p><%=vo.getName() %></p>
		        </div>
		      </a>
		    </div>
		  </div>
    <%
       }
    %>
   </div>
  </div>
</body>
</html>