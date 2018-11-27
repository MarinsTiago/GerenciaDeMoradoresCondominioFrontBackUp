
<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-default navbar-expand-lg navbar-light " style="background-color: #00BFFF;">
  		<a style="color:black;" class="navbar-brand" href="#">The WebCondo</a> <!-- Fazer o Redirecionamento para pagina inicial -->
  		
  		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
  		</button>
  		
  		<div class="collapse navbar-collapse" id="navbarNavDropdown">
  			<!-- BOTÃO APARTAMENTO-->
  			<ul class="navbar-nav">
  				<li class="nav-item active">
  					<button style="color: black;" class="btn btn-default navbar-btn" type="button"><a style="text-decoration: none;" href="apartamento/listarApartamento.jsp">Apartamentos</a></button>
  				</li>
  			</ul>
  			
  			<!-- BOTÃO CONDOMINIOS -->
  			<ul class="navbar-nav">
  				<li class="nav-item active">
  					<button style="color: #00BFFF" class="btn btn-default navbar-btn" type="button"><a style="text-decoration: none;" href="condominio/listarCondominio.jsp">Condominios</a></button>
  				</li>
  			</ul>
  			
  			<!-- BOTÃO MORADORES -->
  			<ul class="navbar-nav">
  				<li class="nav-item active">
  					<button style="color: #00BFFF" class="btn btn-default navbar-btn" type="button"><a style="text-decoration: none;" href="morador/listarMoradores.jsp">Moradores</a></button>
  				</li>
  			</ul>
  			
  			<!-- BOTÃO PORTEIROS -->
  			<ul class="navbar-nav">
  				<li class="nav-item active">
  					<button style="color: #00BFFF" class="btn btn-default navbar-btn" type="button"><a style="text-decoration: none;" href="porteiro/listarPorteiro.jsp">Porteiros</a></button>
  				</li>
  			</ul>
  			
  			<!-- BOTÃO PROPRIETARIOS -->
  			<ul class="navbar-nav">
  				<li class="nav-item active">
  					<button style="color: #00BFFF"class="btn btn-default navbar-btn" type="button"><a style="text-decoration: none;" href="proprietario/listarProprietario.jsp">Proprietarios</a></button>
  				</li>
  			</ul>
  			
  			<!-- SAIR DA PAGINA  -->
  			<li class="nav navbar-nav navbar-right">
				<div align="right"><a class="nav-link" href="login/deslogar.jsp"><span class="glyphicon glyphicon-log-out"><br>Logout</a></div> 
			</li>	
	</nav>
</body>
	<center>
		<img alt="image" src="images/1.jpeg">
	</center>
</html>