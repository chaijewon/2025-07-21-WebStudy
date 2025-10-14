<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.dao.*,com.sist.vo.*"%>
<%
    String fno=request.getParameter("fno");
    FoodVO vo=FoodDAO.foodDetailData(Integer.parseInt(fno));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="table.css">
<style type="text/css">
.table {
  margin: 0px auto;/* 가운데 정렬 */
}
</style>
</head>
<body>
   <h1><%=vo.getName() %> 상세보기</h1>
   <table class="table" width=700>
     <tbody>
      <tr>
        <td align=center width=30% rowspan=9>
          <img src="<%=vo.getPoster() %>" 
            style="width:100%">
        </td>
        <td colspan="2"><h3><%=vo.getName() %></h3></td>
      </tr>
      <tr>
        <td width=15% style="color:gray">주소</td>
        <td width=55%><%=vo.getAddress() %></td>
      </tr>
      <tr>
        <td width=15% style="color:gray">전화</td>
        <td width=55%><%=vo.getPhone() %></td>
      </tr>
      <tr>
        <td width=15% style="color:gray">음식종류</td>
        <td width=55%><%=vo.getType() %></td>
      </tr>
      <tr>
        <td width=15% style="color:gray">가격대</td>
        <td width=55%><%=vo.getPrice() %></td>
      </tr>
      <tr>
        <td width=15% style="color:gray">주차</td>
        <td width=55%><%=vo.getParking() %></td>
      </tr>
      <tr>
        <td width=15% style="color:gray">영업시간</td>
        <td width=55%><%=vo.getTime() %></td>
      </tr>
      <tr>
        <td width=15% style="color:gray">테마</td>
        <td width=55%><%=vo.getTheme() %></td>
      </tr>
     </tbody>
   </table>
</body>
</html>