<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<html>
<head>
<meta charset="UTF-8">
<title>���O�C�����</title>
	<script>
		function validateForm() {
			var inputID = document.getElementById("inputID").value;
			var inputPass = document.getElementById("inputPass").value;

			if(inputID === "" && inputPass === ""){
				alert("ID��Password����͂��Ă��������B");
				return false; // �t�H�[���̑��M�𒆎~
			}else if (inputID === "") {
				alert("ID����͂��Ă��������B");
				return false; // �t�H�[���̑��M�𒆎~
			}else if(inputPass === ""){
				alert("Password����͂��Ă��������B");
				return false;
			}
			return true; // �t�H�[���̑��M�𑱍s
		}
			</script>
</head>
<body>
	<h1>���O�C�����</h1>
	<form action="<%=request.getContextPath()%>/ExecuteLogin" method="post" onsubmit="return validateForm()">
	<p>���[�U�[ID�F<br>
	<input type="text" name="USERID" maxlength="50">
	</p>
	<p>�p�X���[�h�F<br>
	<input type="password" name="PASS" maxlength="20">
	</p>
	<input type="submit" value="���O�C��">
	</form>
</body>
</html>