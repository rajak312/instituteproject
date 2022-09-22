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

            <a href="viewdata.jsp"><button class="btn">View Student</button></a>
              <select class="btn">
                 <option><a href="#" ><button >Report</button></a></option>
                 <option><a href="" >Student Report</a></option>
                 <option><a href="#" ><button>Event Report</button></a></option>
                 
              </select>
              <a href="#" ><button class="btn">Security</button></a>
            <a href="login.jsp" ><button class="btn">Logout</button></a>
             
   </div>
<jsp:include page="poster.html"/>

 
</body>
</html>