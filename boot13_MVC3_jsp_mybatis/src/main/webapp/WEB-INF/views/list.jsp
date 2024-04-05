<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Dept 테이블 목록보기-war * * * * * * - aws - maybe - manager - tomcat</h1><%-- ${allData} --%>
<table border="1">
  <tr>
    <td>부서번호</td>
    <td>부서명</td>
    <td>부서위치</td>
    <td>삭제</td>
    <td>수정</td>
  </tr>
  <c:forEach var="dept" items="${allData}">
    <tr>
    <td>${dept.deptno}</td>
    <td>${dept.dname}</td>
    <td>${dept.loc}</td>
    <td><a href="deptDelete?deptno=${dept.deptno}">삭제</a></td>
    <td><a href="deptUpdateForm?deptno=${dept.deptno}">수정</a></td><!-- 추후구현 -->
  </tr>
  </c:forEach>
</table>
<a href="insertForm">등록화면</a><!-- 추후 구현 -->
</body>
</html>







