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
       
        <select class=btn>
           <option><button>Event</button></option>
           <option><button>Add Event </button></option>
           <option><button>View Event </button></option>
           <option><button>Update Event </button></option>
        </select>
        <select class=btn>
           <option><button>Opportunity</button></option>
           <option><button>Add Vacancy info</button></option>
           <option><button>View Vacancy </button></option>
        </select>
        <select class="btn">
            <option><button>Security</button></option>
        </select>
        <a href="login.jsp"><button class=btn>Logout</button></a>
   </div>
<jsp:include page="poster.html"/>
<marquee direction=up width="40%" HEIGHT="200" bgcolor="red">
This specifies vertical space around the marquee. This can be a value like 10 or 20% etc. <br>
 This specifies horizontal space around the marquee. This can be a value like 10 or 20% etc<br>
 This specifies background color in terms of color name or color hex value.<br>
 This specifies the speed of marquee text. This can have a value like 10 etc.

</marquee>
</body>
</html>