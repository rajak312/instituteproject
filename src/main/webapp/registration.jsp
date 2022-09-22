<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="index.jsp"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <Style>
           #main{
            margin-top: 30px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            
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
           input{
           
            width: 170px;
            border-color: green;
           }
           #date{
          
            width: 170px;
           }
          .City{
         
            width: 175px;
          }
          #State{
            
            width: 175px;
          }
        
          button:hover{
            color:white;
            background-color: blue;
           }
          #rg{
             font-size: 30px;
            margin-bottom: 40px;
           }
          .buttonreg{
            margin-top: 15px;
            width: 100px;
            font-size: 20px;
            box-shadow: 4px 7px 5px gray;
            padding: 5px;
            border: 2px solid gray;
            border-radius: 5px;
          }

    </Style>

</head>
<body>
   
      <form method="post" action="controller">
    <div id="main">
           <div class="vk1">
            <div id="rg">
                 <span>Registration</span>
            </div>

            <div class="sub">  <!--sub1-->
                <label>First Name  </label>
                <input type="text" name="fname" placeholder="your answer" autofocus required/>
            </div>
    
            <div class="sub">   <!--sub2-->
                <label>Last Name    </label>
                <input type="text" name="lname" placeholder="your answer" required/>
            </div>
            <div class="sub">
               <label>Password</label>
               <input type="password" name="pword">
            </div>
            <div class="sub">   <!--sub3-->
                <label>Date of Birth  </label>
                <input type="date" id="date" name="dob">
            </div>
    
            <div class="sub">    <!--sub4-->
                <label>Country</label>
                <select class="City" name="country">
                       <option value=" ">Choose Country</option>
                       <option value="In">India</option>
                       <option value="pk">Israel</option>
                </select>
            </div>
    
            <div class="sub">    <!--sub4-->
                <label>State</label>
                <select name="state" id="State">
                       <option value="">Choice City</option>
                       <option value="MadhyaPra.">MadhyaPradesh</option>
                       <option value="Gujrat">Gujrat</option>
                       <option value="Rajasthan">Rajasthan</option>
                       <option value="Mahratha-">Maharashtra</option>
                       <option value="Tamilnadu">Taminadu</option>
                       <option value="Kerala">kerala</option>
                       <option value="Karnataka">Karnataka</option>
                </select>
            </div>
            <div class="sub">     <!--sub5-->
            <label>City</label>
                <select name="city" class="City">
                       <option value=" ">Choise City</option>
                       <option value="Bhopal">Bhopal</option>
                       <option value="KushiNagar">Kushinagar</option>
                       <option value="Delhi">Delhi</option>
                       <option value="Nagpur">Nagpur</option>
                       <option value="Nanded">Nanded</option>
                       <option value="Indore">Indore</option>
                       <option value="Kashi">Kashi</option>
                </select>
                
            </div>
            <div class=sub>
               <label>Role</label>
               <select name="role" class="City">
                   <option value="admin">Admin</option>
                   <option value="manager">Manager</option>
                   <option value="student">Student</option>
               </select>
            </div>
             <button class=buttonreg>Submit</button>
    
           </div>
    </div>
</form>
</body>
</html>