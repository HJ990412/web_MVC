<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="kr.bit.model.*" %>    
<%@ page import="java.util.*" %>    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
     table td{
        vertical-align:middle !important;  
     }
 
</style>
<STYLE TYPE="text/css">
     a { text-decoration:none }
     BODY {background-color: "white"; margin-top:20}
     .font1 {font-size: 15pt; font-family: "HY 견고딕"; font-weight: bold; text-align: center; color: white}
</STYLE>
<script type="text/javascript" defer="defer">
	$(document).ready(function(){
		   <c:if test="${!empty msg}">
		       alert("${msg}");
		       <c:remove var="msg" scope="session"/>
		   </c:if>
	});

    function logout(){
	      location.href="<c:url value='/memberLogout.do'/>";
    }
    function check(){
 	   if($('#user_id').val()==''){
 		   alert("아이디를 입력하세요");
 		   return false;
 	   }
 	   if($('#password').val()==''){
 		   alert("비밀번호를 입력하세요");
 		   return false;
 	   }
 	   return true;
    }
</script>
</head>
<body>
   <c:if test="${sessionScope.userId==null || sessionScope.userId==''}">
      <form class="form-horizontal" action="${ctx}/memberLogin.do" method="post">
          <div class="form-group">
    		  <label for="user_id" class="col-sm-2 control-label">ID:</label>
     	
              <input type="text" class="form-control" id="user_id" name="user_id">
             
   		  </div>
  		  <div class="form-group">
    		  <label for="pwd">Password:</label>
    		  <input type="password" class="form-control" id="password" name="password">
    	  </div>
    	  <button type="submit" class="btn btn-default" onclick="return check()">로그인</button>
    	  <a href="memberRegister.jsp" target="below"><input type="button" value="회원가입" class="btn btn-primary"/></a>
        </form>
   </c:if>
   <c:if test="${sessionScope.userId!=null && sessionScope.userId!=''}">
      ${sessionScope.userName}님 환영합니다.
      <a href="${ctx}/memberList.do" target="below"><input type="button" value="리스트" class='btn btn-success'/></a>
      <button type="button" class="btn btn-warning" onclick="logout()">로그아웃</button>
   </c:if>   
</body>
</html>