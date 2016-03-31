<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html><body>
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.js"></script>
        <script type="text/javascript">
            function toDisplayPincode(){
            	var params = document.myForm.pincode.value;
            	$.post("Pincode", { pincode : params },
                    function (data) {
                    	$("#location").html(data);
                    }
                 );
            }
        </script>

        <form name="myForm">
            <center > <h1><font color="blue" > Enter the pincode to get the address </font>  </h1><br/></center>


            Please enter Pincode  <input type="text" name="pincode"  /> <br><br>
            <input type="button" value="Address"onclick="toDisplayPincode();" name="address"/> <br> <br>
            <span id ="location" > </span>

        </form>

    </body>
</html>