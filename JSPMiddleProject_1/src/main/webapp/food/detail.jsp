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
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$('.images').hover(function(){
		let i=$(this).attr('src')
		$('#mainImg').attr('src',i);
	})
})
</script>
</head>
<body>
   <div class="container">
    <div class="row">
     <table class="table">
      <tr>
        <td width=40% class="text-center" rowspan="8">
         <table class="table">
          <tr>
           <td colspan=7>
             <img src="${vo.poster }" style="width: 420px;height: 300px"
              id="mainImg"
             >
           </td>
          </tr>
          <tr>
           <c:forTokens items="${vo.images }" delims=","
            var="img"
           >
             <td>
              <img src="${img }" style="width: 55px;height: 50px"
               class="images"
              >
             </td>
           </c:forTokens>
          </tr>
         </table>
        </td>
        <td colspan="2">
          <h3>${vo.name }&nbsp;<span style="color:orange">${vo.score }</span></h3>
        </td>
      </tr>
      <tr>
       <td width=10% style="color:gray">주소</td>
       <td width=50%>${vo.address }</td>
      </tr>
      <tr>
       <td width=10% style="color:gray">전화</td>
       <td width=50%>${vo.phone }</td>
      </tr>
      <tr>
       <td width=10% style="color:gray">음식종류</td>
       <td width=50%>${vo.type }</td>
      </tr>
      <tr>
       <td width=10% style="color:gray">영업시간</td>
       <td width=50%>${vo.time }</td>
      </tr>
      <tr>
       <td width=10% style="color:gray">가격대</td>
       <td width=50%>${vo.price }</td>
      </tr>
      <tr>
       <td width=10% style="color:gray">주차</td>
       <td width=50%>${vo.parking }</td>
      </tr>
      <tr>
       <td width=10% style="color:gray">테마</td>
       <td width=50%>${vo.theme }</td>
      </tr>
     </table>
     <table class="table">
      <tr>
       <td>${vo.content }</td>
      </tr>
      <tr>
        <td class="text-right">
         <a href="#" class="btn btn-xs btn-danger">좋아요</a>
         <a href="#" class="btn btn-xs btn-warning">찜하기</a>
         <a href="#" class="btn btn-xs btn-info">예약</a>
         <a href="../main/main.do?page=${curpage }" class="btn btn-xs btn-success">목록</a>
        </td>
      </tr>
     </table>
    </div>
   </div>
</body>
</html>