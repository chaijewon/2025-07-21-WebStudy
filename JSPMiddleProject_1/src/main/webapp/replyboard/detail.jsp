<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.row {
  margin: 0px auto;
  width: 800px;
}
</style>
</head>
<body>
  <div class="container">
    <div class="row">
     <h1 class="text-center">내용보기</h1>
     <table class="table">
       <tr>
        <th width=20% class="text-center">번호</th>
        <td width=30% class="text-center">${vo.no}</td>
        <th width=20% class="text-center">작성일</th>
        <td width=30% class="text-center">${vo.dbday }</td>
       </tr>
       <tr>
        <th width=20% class="text-center">이름</th>
        <td width=30% class="text-center">${vo.name}</td>
        <th width=20% class="text-center">조회수</th>
        <td width=30% class="text-center">${vo.hit }</td>
       </tr>
       <tr>
        <th width=20% class="text-center">제목</th>
        <td colspan="3">${vo.subejct}</td>
       </tr>
       <tr>
         <td colspan="4" class="text-left" valign="top"
          height="200"><pre>${vo.content}</pre></td>
       </tr>
     </table>
    </div>
  </div>
</body>
</html>


