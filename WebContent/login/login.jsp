<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>The WebCondo</title>
</head>
	
<body style="background-image: url('../images/casa.jpg');">
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form" id="Login" method="POST" action="../login/controleLogin.jsp">
					<span class="login100-form-logo">
						<img class="login100-form-logo" src="../images/1.jpeg" width="100px" height="100px">
					</span>
					<span class="login100-form-title p-b-34 p-t-27">
						
					</span>

					<div class="wrap-input100 validate-input" data-validate = "insira um email válido">
						<input id="login" class="input100" type="text" name="login" placeholder="login...">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input80 validate-input" data-validate="Enter password">
						<input id="senha" class="input100" type="password" name="senha" placeholder="Senha">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-90">
						<a class="txt1" href="http://localhost:8080/GerenciaDeMoradoresCondominioFront/porteiro/cadastrarPorteiro.jsp">
							Cadastre-se Porteiro |
						</a>
						<a class="txt1" href="http://localhost:8080/GerenciaDeMoradoresCondominioFront/morador/cadastroMorador.jsp">
							Cadastre-se Morador |
						</a>
						<a class="txt1" href="http://localhost:8080/GerenciaDeMoradoresCondominioFront/proprietario/cadastroProprietario.jsp">
							Cadastre-se Proprietario
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>