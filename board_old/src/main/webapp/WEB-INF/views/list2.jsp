<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <table width="600" align="center">
    <tr>
      <td> 제 목 </td>
      <td> 작성자 </td>
      <td> 작성일 </td>
    </tr>
  <c:forEach items="${list}" var="bdto">
    <tr>
      <td> ${bdto.title}  </td>
      <td> ${bdto.name} </td>
      <td> ${bdto.writeday} </td>
    </tr>
  </c:forEach> 
   <tr>
     <td colspan="3" align="center"> <a href="write">글쓰기</a></td>
   </tr>
  </table>
</body>








</html>