<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
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
  margin: 0px auto;
  width: 450px;
}
</style>
</head>
<body>
  <div class="container">
   <div class="row">
     <h3 class="text-center">우편번호 검색</h3>
     <form method="post" action="../member/post.do">
	     <table class="table">
	      <tr>
	       <td>
	        입력:<input type=text name=dong size=10 
	             class="input-sm">
	            <button class="btn-sm btn-success">검색</button>
	       </td>
	      </tr>
	     </table>
     </form>
     <table class="table table-striped">
       <thead>
        <tr>
         <th class="text-center" width=20%>우편번호</th>
         <th class="text-center" width=80%>주소</th>
        </tr>
       </thead>
       <tbody>
         <c:forEach var="vo" items="${list }">
           <tr>
            <td width=20% class="text-center">${vo.zipcode }</td>
            <td width=80%>${vo.address }</td>
           </tr>
         </c:forEach>
       </tbody>
     </table>
   </div>
  </div>
</body>
</html>