
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<HTML>
    <HEAD>
    	<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.js"></script>
        <script type="text/javascript" src="Ajaxsc.js"></script>
        <TITLE>Ajax Auto-Suggest</TITLE>

    </HEAD>
    <BODY BGCOLOR="gray"  >

        <br>
        <br>

        <h1> <center> <font color="orange,blue">   Cognizant Library </font> </center> </h1>

        <h4> <center> <font color="orange">  --- This site will provide you the list of books available in the library . </font> </center> </h4>
        <h3><center><font color="orange" > (Just enter the first character of the book name that you are searching for, in turn you will get the list of available books at our center ) </font></center></h3>
        <br>
        <br>
        <font color="white" >  <h3>    Please enter the BOOK NAME </h3>

            <table border="0">
                <tr>
                    <td>

                    </td>
                    <td>
                        <INPUT type="text" size="50" id="text1" onkeyup="doSuggest(this.value);" />

                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <div id = "theResults" style ="width:22em;border:0px black solid;padding-left:2px;padding-right:2px; visibility: hidden">
                        </div>
                    </td>
                </tr>
            </table>
            <span id ="output"/>
        </font>
    </BODY>
</HTML>
