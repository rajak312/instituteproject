<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
         #main{
            margin-top: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 10px;
            
           }
           .vk1{
                border: 2px solid gray;
                padding: 50px;
                box-shadow: 4px 7px 5px gray;
                border-radius: 20px;
           }
           .sub{
                margin-left: 20px;
                padding: 7px;
                display: flex;
                justify-content: space-between;
                width: 350px;   
            }
            #rg{
             font-size: 30px;
            margin-bottom: 40px;
           }
           .button{
            margin-top: 15px;
            width: 80px;
            margin-left: 20px;
            box-shadow: 4px 7px 5px gray;
            border: 2px solid gray;
            border-radius: 5px;
            padding: 5px;
           }
           .button:hover{
            color:white;
            background-color: blue;
           }
           #role{
            width:171px;
           }
             
    </style>
</head>
<body>
     <jsp:include page="index.jsp"></jsp:include>
    <form method="POST" action="logincontroller">
    <div id="main">
        <div class="mk">
         <img src="logo8423.png" >


        </div>

        <div class="vk1">
           <div id="rg">
            <span>Login From</span>
            </div>

            <div class="sub">  <!--sub1-->
                <label>UserId</label>
                <input type="text" placeholder="UserID"  name="userid" autofocus required/>
            </div>
    
            <div class="sub">   <!--sub2-->
                <label>Password    </label>
                <input type="password"  required placeholder="Enter Your Password" name="pword"/>
            </div>
            <div class=sub>
               <label>role</label>
               <select name="role" id=role>
                   <option value="admin">Admin</option>
                   <option value="manager">Manager</option>
                   <option value="student">Student</option>
               </select>
            </div>
             
                <button class="button">Sign In</button>
                <button class="button" type="reset">Clear</button>
           
        </div>

        
    </div>
   </form>
</body>
</html>