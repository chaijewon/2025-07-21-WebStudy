<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  width: 960px;
  margin: 0px auto;
}

p {
 overflow: hidden;
 white-space: nowrap;
 text-overflow: ellipsis;
}
</style>
<script type="text/javascript" src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/javascript">
let food_list=[]
window.onload=async ()=>{
	await axios.get('../food/list.do',{
		params:{
			page:1
		}
	}).then((response)=>{
		console.log(response.data)
		food_list=response.data;
		//console.log(food_list[0].name)
	})
	
	let html='';
	food_list.map((food)=>{
		html+='<div class="col-md-3">'
	     +'<div class="thumbnail">'
	     +'<a href="#">'
	     +'<img src='+food.poster+' style="width:230px;height:150px">'
	     +'<div class="caption">'
	     +'<p>'+food.name+'</p>'
	     +'</div>'
	     +'</a>'
	     +'</div>'
	     +'</div>'
	})
	document.querySelector('.row').innerHTML=html
}
</script>
</head>
<body>
  <div class="container">
   <div class="row">
    
   </div>
  </div>
</body>
</html>