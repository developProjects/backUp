function doSuggest(word) {
    if(word.length>0)
    {
            var url="booknames.jsp";
            url+="?suggestword="+word;            
            $.ajax({
     			url : url,
     			success : function (data) {
     				$("#theResults").html(data);
     				document.getElementById("theResults").style.visibility="visible";
     			}
     		});
    }
    else    {
    	$("#theResults").html("");
        document.getElementById("theResults").style.visibility="visible";
    }
}
function display(input){
	$("#theResults").html("");
    document.getElementById("theResults").style.visibility="visible";
    $("#text1").val(input.id);
    $("#output").html("Selected Bookname is "+input.id);
}

 