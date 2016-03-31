<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html><body>
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.js"></script>
        <script type="text/javascript" language="javascript">
            function bookdetails(){
                var params = document.myForm.bookname.value;   
                
                var xhr = $.post("BookDetails", { bookname : params },
                        function (data) {
                			$("[name='BookPrice']").val(xhr.responseXML.getElementsByTagName("bookprice")[0].firstChild.data);
                			$("[name='AuthorName']").val(xhr.responseXML.getElementsByTagName("authorname")[0].firstChild.data);
                			$("[name='Technology']").val(xhr.responseXML.getElementsByTagName("technology")[0].firstChild.data);               
                        }
                );                
            }
        </script>

        <form name="myForm">
            <center > <h1><font color="blue" > Book's Information in a Page </font>  </h1><br/></center>

            <h4> Please enter BOOK NAME :  <input type="text" name="bookname" onkeyup="bookdetails()" /> <br><br>
                Book Price   <input type="text" name="BookPrice"/> <br> <br>
                Author Name   <input type="text" name="AuthorName" id="LastName"/> <br>  <br>
                Technology <input type="text" name="Technology" />
            </h4>

        </form>

    </body>
</html>