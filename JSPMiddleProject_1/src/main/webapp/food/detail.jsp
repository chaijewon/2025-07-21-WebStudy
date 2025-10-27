<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.row {
  margin: 0px auto;
  width:960px;
}
</style>
</head>
<body>
   <div class="container">
    <div class="row">
     <table class="table">
      <tr>
        <td width=30% class="text-center" rowspan="9">
         <table class="table">
          <tr>
           <td colspan=6>
             <img src="${vo.poster }" style="width: 290px;height: 300px">
           </td>
          </tr>
         </table>
        </td>
        <td colspan="2">
          <h3>${vo.name }&nbsp;<span style="color:orange">${vo.score }</span></h3>
        </td>
      </tr>
     </table>
    </div>
   </div>
</body>
</html>