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
  width: 700px;
}
pre{
  white-space: pre-wrap;
  border: none;
  background-color: white;
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
        <td colspan="3">${vo.subject}</td>
       </tr>
       <tr>
         <td colspan="4" class="text-left" valign="top"
          height="200"><pre>${vo.content}</pre></td>
       </tr>
       <tr>
         <%--
                 list(목록)   detail(상세)
                   |            |
                 insert       update / reply / delete
                                |       |        |
                               detail   list    list
          --%>
          <td colspan="4" class="text-right">
            <a href="#" class="btn btn-xs btn-success">답변</a>
            <a href="#" class="btn btn-xs btn-warning">수정</a>
            <a href="#" class="btn btn-xs btn-info">삭제</a>
            <a href="../board/list.do" class="btn btn-xs btn-primary">목록</a>
          </td>
       </tr>
     </table>
    </div>
  </div>
</body>
</html>


