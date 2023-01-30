<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href"<%=request.getContextPath() %>/css/reset.css" rel="stylesheet"/>
<%-- 
 <link href="./resources/css/reset.css" rel="stylesheet"/>
 --%>
<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</head>
<body>



<!-- form 태그는 action method submit 도 없음. ajax에 data에 담기 편하게 하기 위함. -->
<form id="frmData">
	id:<input type="text" name="id" id="id">
	<br>
	search word:<input type="search" name="searchword" id="searchword">
	<br>
</form>

<button type="button" onclick="ajaxTest_1(this);">ajax test 1</button>
<button type="button" onclick="ajaxTest_2(this);">ajax test 2</button>
<button type="button" onclick="ajaxTest_3(this);">ajax test 3</button>
<button type="button" onclick="ajaxTest_4(this);">ajax test 4</button>
<button type="button" onclick="ajaxTest_5(this);">ajax test 5</button>
<script>
function ajaxTest_1(thisEle){
	var dataQuery = $("#frmData").serialize();
	console.log(dataQuery);
	$.ajax({
		url:"ajaxResponse"
		, method:"post"
		, data: dataQuery
		, dataType:"json"
		, success: function(result){
			console.log(result);
			//console.log(result.id);
			
		}
		, error: function(request, status, errordata){
			alert("error code:"+ request.status +"\n" 
					+"message"+ request.responseText +"\n"
					+"error"+ errordata +"\n");
		}
	});
	
}
function ajaxTest_2(thisEle){
	var dataQuery = $("#frmData").serialize();
	console.log(dataQuery);
	$.ajax({
		url:"ajaxResponse2"
		, method:"post"
		, data: dataQuery
		, dataType:"json"
		, success: function(result){
			console.log(result);
			//console.log(result.id);
			
		}
		, error: function(request, status, errordata){
			alert("error code:"+ request.status +"\n" 
					+"message"+ request.responseText +"\n"
					+"error"+ errordata +"\n");
		}
	});
}

function ajaxTest_3(thisEle){
	var dataQuery = $("#frmData").serialize();
	console.log(dataQuery);
	$.ajax({
		url:"ajaxResponse3"
		, method:"post"
		, data: dataQuery
		, dataType:"json"
		, success: function(result){
			console.log(result);
			//console.log(result.id);
			
		}
		, error: function(request, status, errordata){
			alert("error code:"+ request.status +"\n" 
					+"message"+ request.responseText +"\n"
					+"error"+ errordata +"\n");
		}
	});
}

function ajaxTest_4(thisEle){
	var dataQuery = $("#frmData").serialize();
	console.log(dataQuery);
	$.ajax({
		url:"ajaxResponse4"
		, method:"post"
		, data: dataQuery
		, dataType:"json"
		, success: function(result){
			console.log(result);
			//console.log(result.id);
			
		}
		, error: function(request, status, errordata){
			alert("error code:"+ request.status +"\n" 
					+"message"+ request.responseText +"\n"
					+"error"+ errordata +"\n");
		}
	});
}

function ajaxTest_5(thisEle){
	var dataObject = {
			 id: $("#id").val()
			,name: $("#searchword").val()
	}
	console.log(dataObject);
	$.ajax({
		url:"ajaxResponse5"
		, method:"post"
		, data: JSON.stringify(dataObject)
		, contentType: "application/json"
		//, contentType: "application/json; charset=utf-8"
		, dataType:"json"
		, success: function(result){
			console.log(result);
			//console.log(result.id);
			
		}
		, error: function(request, status, errordata){
			alert("error code:"+ request.status +"\n" 
					+"message"+ request.responseText +"\n"
					+"error"+ errordata +"\n");
		}
	});
}












</script>
</body>
</html>