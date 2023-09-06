<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
</head>
<body>
	<h1>ログイン画面</h1>
	<form action="ExecuteLogin" method="post">
	<p>ユーザーID：<br>
	<input type="text" name="USERID" maxlength="20">
	</p>
	<p>パスワード：<br>
	<input type="password" name="PASS" maxlength="20">
	</p>
	<input type="submit" value="ログイン">
	</form>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
<title>ログイン画面</title>
	<script>
  		function validateForm() {
	    	var inputID = document.getElementById("inputID").value;
	    	var inputPass = document.getElementById("inputPass").value;
	
			if(inputID === "" && inputPass === ""){
				alert("IDとPasswordを入力してください。");
	      		return false; // フォームの送信を中止
  			}else if (inputID === "") {
	      		alert("IDを入力してください。");
	      		return false; // フォームの送信を中止
    		}else if(inputPass === ""){
				alert("Passwordを入力してください。");
				return false;
            }
    		return true; // フォームの送信を続行
  		}
	</script>
</head>
<body style="text-align:center;">
	<h1>ログイン</h1>
	<form action="<%=request.getContextPath()%>/ExecuteLogin" method="post" onsubmit="return validateForm()">
	<p>ユーザーID：<br>
	<input type="text" name="USER_ID" id="inputId" maxlength="20">
	</p>
	<p id="errId"></p>
	<p>パスワード：<br>
	<input type="password" name="PASSWORD" id="inputPass" maxlength="20">
	</p>
	<input type="submit" value="ログイン">
	</form>
	

</body>
</html>