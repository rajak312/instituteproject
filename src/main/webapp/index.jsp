<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    #mainheader{
        display: flex;
        align-items:center;
        justify-content: space-between;
        background-color: black;
        margin-top: 20px;
        padding: 8px;
    
    }
    .btn{
        font-size: 20px;
        width:100px;
        color: white;
        background-color:black; 
        margin-left:20px;
    }
    .btn:hover{
    color:black;
    background-color: blue;
    }
</style>
</head>
<body class="container-fluid">
  
    <div id="mainheader">
        <a href="index.jsp"><button class="btn">Home</button></a>
        <div>
            <a href="registration.jsp"><button class="btn">Registration</button></a>
            <a href="login.jsp" ><button class="btn">Login</button></a>
        </div>
   </div>
<jsp:include page="poster.html"/>
</body>
</html>