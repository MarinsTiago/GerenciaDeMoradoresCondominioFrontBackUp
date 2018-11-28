<%@page import="java.util.List"%>
<%@page import="control.MoradorControl"%>
<%@page import="model.Morador"%>
<%@page import="control.PorteiroControl"%>
<%@page import="model.Usuario"%>
<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<style type="text/css">
		img{
			width: 400px;
			height: 400px;
		}
	</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<!--Necessário para pegar o usuario da sessão-->
 <%
	HttpSession sessao = request.getSession();
	Usuario u = (Usuario) sessao.getAttribute("usuario");
	long id = u.getId();
%>

<body>
	<nav class="navbar navbar-default navbar-expand-lg navbar-light " style="background-color: #00BFFF;">
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<a style="color:black;" class="navbar-brand" href="#">The WebCondo</a>
		
		
			<!-- sair da pagina  -->
  			<li class="nav navbar-nav navbar-right">
				<div align="right"><a class="nav-link" href="login/deslogar.jsp"><span class="glyphicon glyphicon-log-out"><br>Logout</a></div> 
			</li>
		</div>
	</nav>

	<!-- <div class="container">
		<div class="col-md-6">
			<div class="input-group h2">
				<form action="teste.jsp" method="post">
		    		<input name="nome" class="form-control" type="text" placeholder="Pesquisar moradores">
		       		<span class="input-group-btn">
		           		<button class="btn btn-info" type="submit">
		               		<span class="glyphicon glyphicon-search">Buscar</span>		                  
		           		</button>
		      		</span>
				</form>      
			</div>		        
		</div>
	</div>
	<span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>-->

<div class="container">
    <div id="img">
    	<center>
    		<img alt="img" src="images/1.jpeg">
    	</center>
    </div>
    <div class="row" align="top">
        <div class="col-12">
            <div class="input-group">
            	<form action="teste.jsp" method="post">
                	<input name="nome" class="form-control border-secondary py-2" type="text" placeholder="Pesquisar Moradores">	
		           	<center>
		           	<br>
		           		<button class="btn btn-info" type="submit">
		               		<span class="glyphicon glyphicon-search">Buscar</span>		                  
		           		</button>
		           	</center>   		
                </form>
            </div>
        </div>
    </div>
</div>
	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>