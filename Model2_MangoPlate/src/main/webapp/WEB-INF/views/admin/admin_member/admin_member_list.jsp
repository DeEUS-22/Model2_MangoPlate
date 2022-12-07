<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mangoplate</title>
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/mangoplate.css">
<link rel="stylesheet"  href="http://localhost:9000/mangoplate/resources/css/am-pagination.css">
<script src="http://localhost:9000/mangoplate/resources/js/jquery-3.6.0.min.js"></script>
<script src="http://localhost:9000/mangoplate/resources/js/am-pagination.js"></script>
<!-- <script>
	$(document).ready(function(){
		
		//페이징 리스트 출력
		var pager = jQuery('#ampaginationsm').pagination({
		
		    maxSize: 7,	    		// max page size
		    totals: '${dbCount}',	// total rows	
		    page: '${rpage}',		// initial page		
		    pageSize: '${pageSize}',	// max number items per page
		
		    // custom labels		
		    lastText: '&raquo;&raquo;', 		
		    firstText: '&laquo;&laquo;',		
		    prevText: '&laquo;',		
		    nextText: '&raquo;',
				     
		    btnSize:'sm'	// 'sm'  or 'lg'		
		});
		
		//페이징 번호 클릭 시 이벤트 처리
		jQuery('#ampaginationsm').on('am.pagination.change',function(e){		
			   jQuery('.showlabelsm').text('The selected page no: '+e.page);
	           $(location).attr('href', "http://localhost:9000/mangoplate/admin_member_list.do?rpage="+e.page);         
	    });
		
 	});
</script>  -->
<style>
	* {
			margin: 0px;
			padding: 0px;
		}
		
		.content {
			width: 100%;
			margin-top: 61px;
			margin-bottom : 300px;
		}
	
	.admin_head {
		/* border: 1px solid blue; */
		width: 100%;
		height: 250px;
		background-color: coral;
	}
	
	.admin_head h1 {
		/* border: 1px solid blue;  */
		color: white;
		font-weight:bold;
		font-size: 50px;
		font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO","sans-serif";
		/* display: inline-block; */
		display: block;
		padding-top:30px;
		margin-top: 30px;
		margin-left: 30px;
	}
	
	ul.h2 li:nth-child(2) a {
		background-color: coral;
		color:#fff;
	}
	
	h2 {
		border: 1px solid red;
		margin: 50px;
	}
	
	tr:last-child {
		border: none;	
	}
	
	table.board_list{
	 	width:70%; margin:0 auto; 	
 		font-size:13px;
	}
	
	table.board_list, table.board_list th, table.board_list td {
		border:1px solid #ccc;
 		border-collapse:collapse;
	}
	
	table.board_list th {
		background-color:coral;
		text-align:center;
		color : white;
	}
	
	table.board_list th, table.board_list td {
		padding:10px 0;
	}
	
	table.board_list td {
		text-align:center;
	}
	
	table.board_list tr:first-child td {
		border:1px solid #fff;
 		border-bottom:1px solid #ccc;
 		text-align:right; 
	}
	
	table.board_list tr:first-child td button{ 
 		background-color:#ccc;
 		border-color:#ccc;
 		border-radius:5px; 		
 	}
	table.board_list tr:last-child td { 
 		border:1px solid #fff;
 		border-top:1px solid #ccc;
 		padding-top:20px;
 	}
 	table.board_list  td a { 
 		text-decoration:none;
 		color:#000;
 	}
 	table.board_list  td a:hover { 
 		text-decoration:underline;
 	}
 	
</style>
</head>
<body>
	<!-- Header Include -->
	<jsp:include page="../../header.jsp"></jsp:include>
	
	
	<!---------------------------------------------->
	<!--------------- Content ----------------------->
	<!---------------------------------------------->
	<div class="content">
		<div class="admin_head">
			<h1>관리자 페이지</h1>	
		</div>
	<ul class="h2">
		<li><a href="admin.do">Admin</a></li>
		<li><a href="admin_member_list.do" class="active">회원정보관리</a></li>
		<li><a href="admin_notice_list.do">공지사항 관리</a></li>
		<li><a href="admin_eatdeal_list.do">EAT딜 관리</a></li>
		<li><a href="admin_restaurant_list.do">식당등록 관리</a></li>
	</ul>
		
		<h2>회원정보-리스트</h2>
		<table class="board_list">			
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>성명</th>
				<th>연락처</th>
				<th>가입날짜</th>
			</tr>
			
			<c:forEach var="vo" items="${list}">
			<tr>
				<td>${vo.rno }</td>
				<td><a href="admin_member_content.do?id=${vo.id }">${vo.id }</a></td>
				<td>${vo.name}</td>
				<td>${vo.pnumber}</td>
				<td>${vo.mdate}</td>
			</tr>			
			</c:forEach>
			
			<tr>
				<td colspan="5"><div id="ampaginationsm"></div></td>
			</tr>
		</table>	
	</div>
	
	<!-- footer Include -->
	<iframe src="footer.do" width="100%" height="750px" scrolling="no" frameborder=0></iframe>
	
</body>
</html>







