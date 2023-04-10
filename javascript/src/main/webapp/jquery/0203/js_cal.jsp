<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
   td {
     width:25px;
     height:25px;
   }
 </style>
 <script>
  function views(yy,mm)
  {
	  if(!yy)
	  {
		  var today=new Date();
		  var yy=today.getFullYear();
		  var mm=today.getMonth();  // 0~11
	  }	  
 
	  // 0월, 13월일경우 변경
	  if(mm==-1)
	  {
		  yy=yy-1;
		  mm=11;
	  }	  
	  if(mm==12)
	  {
		  yy=yy+1;
		  mm=0;
	  }	  
	  
	  // 총일수, 1일의 요일, 몇주
	  // 총일수 : 배열을 이용
	  var mon=[31,28,31,30,31,30,31,31,30,31,30,31];
	  
	  var chong=mon[mm];
	  // 2월달인 경우 윤년이면 29로 변경
	  // 년도=>4의배수인 경우 ( 100의 배수는 윤년이 아니다 : 400의 배수는 윤년이다)
	  
	  if(mm==1) // 2월인 경우
	  {
		  if( (yy%4==0 && yy%100!=0) || yy%400==0 ) // 윤년인 경우
			  chong++;
	  }	  
 
	  // 1일의 요일
	  var xday=new Date(yy,mm,1);
	  var yoil=xday.getDay();
	  
	  // 몇주인가?
	  var ju=Math.ceil( (chong+yoil)/7 );
 
	  var str="<table  border='1'>";
	  str=str+"<caption>";
	   // 이번달이 2023년 2월 기준으로
	  //        <span onclick='views(2023,0)'> 이전 </span>
	  str=str+" <span onclick='views("+yy+","+(mm-1)+")'> 이전 </span> &nbsp;&nbsp;";
	  str=str+yy+"년 "+(mm+1)+"월";
	  str=str+"&nbsp;&nbsp; <span onclick='views("+yy+","+(mm+1)+")'> 다음 </span>";
	                                //onclick='views(2023,2)'
	  str=str+"</caption";
	  str=str+"<tr align='center'>";
	  str=str+"<td> 일 </td>";
	  str=str+"<td> 월 </td>";
	  str=str+"<td> 화 </td>";
	  str=str+"<td> 수</td>";
	  str=str+"<td> 목 </td>";
	  str=str+"<td> 금 </td>";
	  str=str+"<td> 토 </td>";
	  str=str+"</tr>";
	  
	  var day=1;
	  
	  for(i=0;i<ju;i++)
	  {
		  str=str+"<tr>";
		  
		  for(j=0;j<7;j++)
		  {
			  if( (j<yoil && i==0) || chong<day   )
			  {	  
                  str=str+"<td> </td>";
			  }
			  else
			  {
			      str=str+"<td>"+day+"</td>";
		          day++;
			  }
		  }	  
		  
		  str=str+"</tr>";
	  }
	  
	  str=str+"</table>";
	  
      document.getElementById("pkc").innerHTML=str;
  }
 </script>
</head>
<body> <!-- js_cal.jsp -->
  <!-- 자바스크립트를 이용한 달력 --> 
  <input type="button" onclick="views()" value="달력">
  <div id="pkc"></div> 
</body>
</html>

