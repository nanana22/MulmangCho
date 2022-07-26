<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Ajax</h1>
<div class="uploadDiv">	
	<input type="file" name="uploadFile" multiple="multiple">
</div>
<button id="uploadBtn">Upload</button>

<script type="text/javascript">
	$(document).ready(function(){
		
		$('#uploadBtn').on('click', function(e){
			var formData = new FormData();
			var inputFile = $('input[name="uploadFile"]');
			var files = inputFile[0].files;
			
			console.log(files);
			
			//add filedata to formdata
			for(var i=0; i<files.length; i++){
				formData.append("uploadFile", files[i]);
			}
			
			$.ajax({
				url:'/uploadAjaxAction',
				processData: false,
				contentType: false,
				data: formData,
				type: 'post',
				success: function(result){
					alert("Uploaded");
				}
												
				
			});//ajax
			
		});
		
	})//ready
	
	
	
</script>
</body>
</html>