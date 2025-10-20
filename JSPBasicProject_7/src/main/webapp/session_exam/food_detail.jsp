<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.vo.*,com.sist.dao.*"%>
<%
    //1. 사용자 보내준 데이터 받기 
    String fno=request.getParameter("fno");
    FoodVO vo=FoodDAO.foodDetailData(Integer.parseInt(fno));
    // 댓글 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
  margin-top: 50px;
}
.row {
  width: 800px;
  margin: 0px auto;
}

</style>
</head>
<body>
  <div class="container">
   <div class="row">
     <jsp:include page="login.jsp"></jsp:include>
   </div>
   <div style="height: 20px"></div>
   <div class="row">
     <table class="table">
      <tr>
       <td width=30% class="text-center" rowspan="9">
        <img src="<%=vo.getPoster() %>" style="width: 240px;height: 350px">
       </td>
       <td colspan="2">
        <h3><%=vo.getName() %>&nbsp;
         <span style="color:orange;"><%=vo.getScore() %></span></h3>
       </td>
      </tr>
      <tr>
       <td width=20% style="color:gray">주소</td>
       <td width=50%><%=vo.getAddress() %></td>
      </tr>
      <tr>
       <td width=20% style="color:gray">전화</td>
       <td width=50%><%=vo.getPhone() %></td>
      </tr>
      <tr>
       <td width=20% style="color:gray">음식종류</td>
       <td width=50%><%=vo.getType() %></td>
      </tr>
      <tr>
       <td width=20% style="color:gray">영업시간</td>
       <td width=50%><%=vo.getTime() %></td>
      </tr>
      <tr>
       <td width=20% style="color:gray">가격대</td>
       <td width=50%><%=vo.getPrice() %></td>
      </tr>
      <tr>
       <td width=20% style="color:gray">주차</td>
       <td width=50%><%=vo.getParking() %></td>
      </tr>
      <tr>
       <td width=20% style="color:gray">테마</td>
       <td width=50%><%=vo.getTheme() %></td>
      </tr>
     </table>
     <table class="table">
       <tr>
        <td><%=vo.getContent() %></td>
       </tr>
       <tr>
         <td class="text-right">
          <a href="food_list.jsp" 
            class="btn btn-sm btn-success">목록</a>
         </td>
       </tr>
     </table>
   </div>
  </div>
</body>
</html>



