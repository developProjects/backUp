<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.5.js"></script>
        <script type="text/javascript">

            function tovalidate() {
                var nameparam = document.getElementsByName("username")[0].value;
                var passwordparam = document.getElementsByName("password")[0].value;
               
                $.post("UserLogin", { username : nameparam, password : passwordparam  },
                	function (data) {
                		$("#display").html(data);
                	}
             	);                    
             }


        </script>
    </head>

    <form name="myForm">
        <center> <h1> Welcome to Login Page </h1> </center><br> <hr>
        <br><br>
        Enter UserName: <input type="text" name="username"  /><br> <br>
        Enter Password : <input type="password" name="password"/> <br><br>
        <input type="button" name="btn" value="Click to Login" onclick="tovalidate()"/><br/><br/>
        <span id="display" /><br/><br/>
    </form>



</html>
