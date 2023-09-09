<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.bit.model.*" %>    
<%@ page import="java.util.*" %>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>

<head>
          <TITLE> 박홍준의 홈페이지 </TITLE>
</head>

<FRAMESET COLS="20%,80%" FRAMEBORDER="0">
  <FRAME SRC="menu.html" NAME="menu">
  <FRAME SRC="below.jsp" NAME="below">
</FRAMESET>

</html>