<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery Auto Complete</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.5.js"></script>
<script type="text/javascript">
	function lookup(inputString) {
		if(inputString.length == 0) {
			$('#suggestions').hide();
		} else {
			$.post("countrynames.jsp", {suggestword: ""+inputString+""}, function(data){
				if(data.length >0) {
					$('#suggestions').show();
					$('#autoSuggestionsList').html(data);
				}
			});
		}
	} 
	function fill(thisValue) {
		$('#inputString').val(thisValue);
		setTimeout("$('#suggestions').hide();", 200);
	}
	function display(thisValue){
		alert(thisValue.id);
	    document.getElementById("inputString").value = thisValue.id;	    
	    $('#suggestions').hide();	        
	}
</script>
<style type="text/css">
	body {
		font-family: Helvetica;
		font-size: 13px;
		color: #000;
	}
	h3 {
		margin: 0px;
		padding: 0px;	
	}
	.suggestionsBox {
		position: relative;
		left: 0px;
		margin: 0px 0px 0px 0px;
		width: 200px;
		background-color: #7845DD;
		-moz-border-radius: 7px;
		-webkit-border-radius: 7px;
		border: 2px solid #000;	
		color: #fff;
	}
	.suggestionList {
		margin: 0px;
		padding: 0px;
	}
	.suggestionList li {
		
		margin: 0px 0px 3px 0px;
		padding: 3px;
		cursor: pointer;
	}
	.suggestionList li:hover {
		background-color: #DD45CD;
	}
</style>
</head>
<body>
	<div>	
			<div>
				Type your county:
				<br />
				<input type="text" size="30" id="inputString" onkeyup="lookup(this.value);" onblur="fill();" />
			</div>
			<div class="suggestionsBox" id="suggestions" style="display: none;">
				<div class="suggestionList" id="autoSuggestionsList">
				</div>
			</div>
	</div>
</body>
</html>

