<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
 <script>
   $(function()
   {
	   $("#aa").sortable();
   });
 </script>
 <style>
   li {
     list-style-type:none;
     width:130px;
     height:25px;
     border:1px solid black;
     text-align:center;
     margin-top:5px;
   }
 </style>
</head>
<body> <!-- sortable.jsp -->
   <ul id="aa">
     <li> 짜장면 </li>
     <li> 짬뽕 </li>
     <li> 탕수육 </li>
     <li> 비빔밥 </li>
     <li> 떡볶이 </li>
     <li> 막국수 </li>
     <li> 킹크랩 </li>
     <li> 칼국수 </li>
     <li> 연어회 </li>
     <li> 순두부 </li>
     <li> 내장탕 </li>
   </ul>
</body>  
</html>