<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		type:'post',
		url:'../food/food_list.do',
		data:{"type":"양식"},
		success:function(result)
		{
			//console.log(result)
			let json=JSON.parse(result)
			console.log(json)
		}
	})
})
</script>
</head>
<body>

</body>
</html>