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
    #tblcenter{
       display:flex;
       justify-content:center;
       align-items:center;
    }
     th{
      padding:20px;
    }
    td{
       padding:20px;
    }
    
</style>
</head>
<body class="container-fluid">
  
    <div id="mainheader">
        <a href="index.jsp"><button class="btn">Home</button></a>

            <a href="#"><button class="btn">View Student</button></a>
              <select class="btn">
                 <option><a href="#" ><button >Report</button></a></option>
                 <option><a href="#" ><button>Student Report</button></a></option>
                 <option><a href="#" ><button>Event Report</button></a></option>
                 
              </select>
              <a href="#" ><button class="btn">Security</button></a>
            <a href="login.jsp" ><button class="btn">Logout</button></a>
             
   </div>
<jsp:include page="poster.html"/>

  <div id=tblcenter>
       <table>
 <tr bgcolor="cyan">
    <th>Login Name </th>
    <th>First Name</th>
    <th>Last Name</th>
    <th>DOB</th>
    <th>City</th>
    <th>State</th>
    <th>Country</th>
    <th>Action</th>
 </tr>
 <tr>
   <td>Venktesh</td>
   <td>Venktest</td>
   <td>Govindraj</td>
   <td>02-05-2020</td>
   <td>Salem</td>
   <td>Tamilnadu</td>
   <td>India</td>
   <td><a href="#" >Verify</a><td>
 </tr>
 <tr>
   <td>Venktesh</td>
   <td>Mainpati</td>
   <td>Mainpati</td>
   <td>02-05-2002</td>
   <td>Bhopal</td>
   <td>Madhya Pradesh</td>
   <td>India</td>
   <td><a href="#" >Verify</a><td>
 </tr>
 <tr>
   <td>Sandeep</td>
   <td>Sandeep</td>
   <td>sah</td>
   <td>02-05-2010</td>
   <td>Betiya</td>
   <td>Bihar</td>
   <td>India</td>
   <td><a href="#" >Verify</a><td>
 </tr>
</table>
  </div>
</body>
</html>