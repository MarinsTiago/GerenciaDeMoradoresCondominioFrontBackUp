<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="bg-light" style="margin-top: 5%;">
	<div class="container">
		<form action="crudAdmin.jsp" method="post">
			<input type="hidden" name="acao" value="incluirAdm">
        	<input type="hidden" name="tipoUsuario" value="adm"> <!--NÃO ALTERAR ESTE CAMPO-->
        	
        	<span class="contact100-form-title">
        		Cadastro Administrador
        	</span>
        	
        	<!-- NOME -->
        	<div class="mb-3">
        		<label>Nome</label>
        		<input type="text" name="nome" class="form-control" required>
        		<div class="invalid-feedback">
        			É obrigatorio inserir o nome.
        		</div>
        	</div>
        	
        	
        	<div class="row">
        		<!-- LOGIN -->
        		<div class="col-6 mb-3">
        			<label>Login</label>
        			<input type="text" name="login" class="form-control" required>
        			<div class="invalid-feedback">
        				É obrigatorio inserir um login.
        			</div>
        		</div>
        		
        		<!-- SENHA -->
        		<div class="col-6 mb-3">
        			<label>Senha</label>
        			<input type="password" name="senha" class="form-control" required>
        			<div class="invalid-feedback">
        				É obrigatorio inserir uma senha.
        			</div>
        		</div>
        	</div>
        	
        	<button class="btn btn-primary btn-lg btn-block" type="submit">Salvar</button>
		</form>
	</div>
	<div id="dropDownSelect1"></div>
	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>