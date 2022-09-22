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
    select{
       border:0px;
       text-decoration:none;
    }
</style>
</head>
<body class="container-fluid">
  
    <div id="mainheader">
        <a href="index.jsp"><button class="btn">Home</button></a>
           
         <select class=btn>
            <a><option>Mail</option></a>
            <a><option >View Mails</option></a>
            <a><option>Send Mail</option></a>
         </select>
         <select class=btn>
            <a><option>View Friends</option></a>
         </select>
         <select class=btn>
            <a><option>Search Friend</option></a>
         </select>
         <select class=btn>
            <a><option>View Events</option></a>
         </select>
         <select class=btn>
            <a><option>view Opportunity</option></a>
         </select>
         <select class=btn>
            <a><option>Profile</option></a>
            <a><option>Persional Information</option></a>
         </select>
         <select class=btn>
            <a><option>Academic Information</option></a>
         </select>
         <select class=btn>
            <a><option>Security </option></a>
            <a><option>Change Password0 </option></a>
            
         </select>
         <select class=btn>
            <a href="login.jsp"><option>Logout</option></a>
         </select>
   </div>
<jsp:include page="poster.html"/>
</body>
</html>