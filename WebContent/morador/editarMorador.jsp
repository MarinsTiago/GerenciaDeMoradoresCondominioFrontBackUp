<%@page import="model.Morador"%>
<%@page import="control.MoradorControl"%>
<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	long id = Long.parseLong(request.getParameter("id"));
	MoradorControl mc = new MoradorControl();
	Morador m = mc.buscarPorId(id);

%>
<body class="bg-light" style="margin-top: 5%;">
	<div class="container">
		<form action="../morador/crudMorador.jsp" method="post">
			<input type="hidden" name="acao" value="editarMorador" >
			<input type="hidden" name="tipoUsuario" value="morador"> <!--NÃO ALTERAR ESTE CAMPO-->
			<input type="hidden" name="id" value="<%=m.getId()%>">
			
			<span class="contact100-form-title">
    				Editar Morador
    		</span>
    		
			<div class="row">
    			<!-- NOME -->
    			<div class="col-6 mb-3">
    				<label>Nome</label>
    				<input type="text" name="nome" class="form-control" value="<%=m.getNome() %>" required>
    				<div class="invalid-feedback">
                  			É obrigatório inserir um nome válido.
                	</div>
    			</div>
    			
    			<!-- CPF -->
    			<div class="col-6 mb-3">
    				<label>CPF</label>
    				<input type="text" name="cpf" class="form-control" value="<%=m.getCpf()%>" required>
    				<div class="invalid-feedback">
                  			É obrigatório inserir um CPF.
                	</div>
    			</div>
    		</div>
    		
    		<!-- EMAIL -->
    		<div class="mb-3">
    			<label>E-mail</label>
    				<input type="email" name="email" class="form-control" value="<%=m.getEmail()%>" required>
    				<div class="invalid-feedback">
                  			É obrigatório inserir um E-mail.
                	</div>
    		</div>
    		
    		<div class="row">
    			
    			<!-- TEL RESIDENCIAL -->
 				<div class="col-6 col-md-4">
 					<label>Tel Residencial</label>
    				<input type="text" name="telResidencial" value="<%=m.getTelefoneResidencial()%>" class="form-control" >
 				</div>
 				
 				<!-- TEL COMERCIAL -->
 				<div class="col-6 col-md-4">
 					<label>Tel Comercial</label>
    				<input type="text" name="telComercial" value="<%=m.getTelefoneComercial()%>" class="form-control" >
 				</div>
 				
 				<!-- CELULAR -->
  				<div class="col-6 col-md-4">
  					<label>Celular</label>
    				<input type="text" name="celular" value="<%=m.getCelular()%>" class="form-control">
  				</div>
  			</div>
  				
  				<hr class="mb-4">
  				
  				
  				<div class="row">
  					<!--Escritura -->
  					<div class="col-6 mb-3">
  						<input type="text" name="doc" class="form-control" value="<%=m.getTipoDocumento()%>">
  					</div >
  					
  					<!-- Propriedade -->
  					<div class="col-6 mb-3">
  						<input type="text" name="morador" class="form-control" value="<%=m.getTipoMorador()%>">
  					</div>	
  				</div>
  				
  				<hr class="mb-4">
  				
  				<div class="row">
    				<!-- VEICULO -->
    				<div class="col-6 mb-3">
    					<label>Placa do Veiculo</label>
    					<input type="text" name="veiculo" value="<%=m.getPlacaVeiculo()%>" class="form-control">
    				</div>
    			
    				<!-- LOGIN -->
    				<div class="col-6 mb-3">
    					<label>Login</label>
    					<input type="text" name="login" value="<%=m.getLogin()%>" class="form-control" required>
    					<div class="invalid-feedback">
                  			É obrigatório inserir um Login.
                		</div>
    				</div>
    			</div>
    			
    			<!-- SENHA -->
    			<div class="mb-3">
    				<label>Senha</label>
    					<input type="password" name="senha" value="<%=m.getSenha()%>" class="form-control" required>
    					<div class="invalid-feedback">
                  			É obrigatório inserir uma senha.
                		</div>
    			</div>
    			
    			<button class="btn btn-primary btn-lg btn-block" type="submit">Salvar</button>
			</div>
		</form>
	</div>
</body>
</html>