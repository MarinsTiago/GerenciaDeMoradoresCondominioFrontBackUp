<%@page import="model.Administrador"%>
<%@page import="control.AdministradorControl"%>
<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	AdministradorControl ac = new AdministradorControl();
	long id = Long.parseLong(request.getParameter("id"));
	Administrador a = ac.buscarPorId(id);
%>
<body class="bg-light" style="margin-top: 5%;">
	<div class="container">
		<form action="crudAdmin.jsp" method="post">
			<input type="hidden" name="acao" value="editarAdm">
			<input type="hidden" name="tipoUsuario" value="adm"> <!--NÃO ALTERAR ESTE CAMPO-->
			<input type="hidden" name="id" value="<%=a.getId()%>">
        	
        	<span class="contact100-form-title">
        		Editar Administrador
        	</span>
        	
        	<!-- NOME -->
        	<div class="mb-3">
        		<label>Nome</label>
        		<input type="text" name="nome" class="form-control" value="<%=a.getNome()%>" required>
        		<div class="invalid-feedback">
        			É obrigatorio inserir o nome.
        		</div>
        	</div>
        	
        	
        	<div class="row">
        		<!-- LOGIN -->
        		<div class="col-6 mb-3">
        			<label>Login</label>
        			<input type="text" name="login" class="form-control" value="<%=a.getLogin()%>" required>
        			<div class="invalid-feedback">
        				É obrigatorio inserir um login.
        			</div>
        		</div>
        		
        		<!-- SENHA -->
        		<div class="col-6 mb-3">
        			<label>Senha</label>
        			<input type="password" name="senha" class="form-control" value="<%=a.getSenha()%>" required>
        			<div class="invalid-feedback">
        				É obrigatorio inserir uma senha.
        			</div>
        		</div>
        	</div>
        	
        	<button class="btn btn-primary btn-lg btn-block" type="submit">Salvar</button>
		</form>
	</div>
</body>
</html>