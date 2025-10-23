<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
    객체 모델 
    ------- 태그를 제어 => 태그를 찾는 방법
            HTML은 태그를 클래스로 인식 / 속성을 멤버변수로 인식  
    1. 태그 id속성이 있는 경우 
       document.getElementById("id명") => $('#id명')
       <button id="btn">
    2. 태그 class속성이 있는 경우 
       document.getElementByClassName("class명") => $('.class명')
       <button class="btns">
    3. 태그 name속성이 있는 경우 
       document.getElementByName("name명")
       <input type=text name="id">
    4. 태그명 
       document.getElementByTagName("태그명")
    5. CSS 선택자 이용하는 방법 
       document.querySelector("CSS선택자")
                 => id : #
                 => class : . 
                 => 태그 > 태그 
                 => 태그 태그 ...
       DOMScript => Vue / React / Jquery
        | 태그를 제어하는 프로그램 
        | 태그를 찾는 방법 => CSS 선택자 
--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.row {
  margin: 0px auto;
  width:350px;
}
h1 {
  text-align: center;
}
</style>
<script type="text/javascript">
function gesan()
{
}
</script>
</head>
<body>
  <div class="container">
   <div class="row">
     <h1>성적 계산</h1>
     <table class="table">
      <tr>
       <th width="35%" class="text-center">국어</th>
       <td width="65%">
        <input type=text class="input-sm" id="kor" size=15> 
       </td>
      </tr>
      <tr>
       <th width="35%" class="text-center">영어</th>
       <td width="65%">
        <input type=text class="input-sm" id="eng" size=15> 
       </td>
      </tr>
      <tr>
       <th width="35%" class="text-center">수학</th>
       <td width="65%">
        <input type=text class="input-sm" id="math" size=15> 
       </td>
      </tr>
      <tr>
        <td colspan="2" class="text-center">
         <input type=button id="btn" onclick="gesan()"
          class="btn-sm btn-danger" value="계산">
        </td>
      </tr>
     </table>
     <h1>처리 결과</h1>
     <table class="table">
      <tr>
       <th width="35%" class="text-center">총점</th>
       <td width="65%">
        <input type=text class="input-sm" id="total" 
        size=15 readonly> 
       </td>
      </tr>
      <tr>
       <th width="35%" class="text-center">평균</th>
       <td width="65%">
        <input type=text class="input-sm" id="avg" 
        size=15 readonly> 
       </td>
      </tr>
      <tr>
       <th width="35%" class="text-center">학점</th>
       <td width="65%">
        <input type=text class="input-sm" id="score" 
        size=15 readonly> 
       </td>
      </tr>
     </table>
   </div>
  </div>

</body>
</html>