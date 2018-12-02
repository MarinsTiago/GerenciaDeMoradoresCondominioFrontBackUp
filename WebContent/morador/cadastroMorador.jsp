<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>The WebCondo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body class="bg-light" style="margin-top: 5%;">
	<div class="container">
		<form action="../morador/crudMorador.jsp" method="post">
			<input type="hidden" name="acao" value="incluirMorador"> <!--NÃO ALTERAR ESTE CAMPO-->
			<input type="hidden" name="tipoUsuario" value="morador"> <!--NÃO ALTERAR ESTE CAMPO-->
			
			<span class="contact100-form-title">
    				Cadastro Morador
    		</span>
    		
			<div class="row">
    			<!-- NOME -->
    			<div class="col-6 mb-3">
    				<label>Nome</label>
    				<input type="text" name="nome" class="form-control" required>
    				<div class="invalid-feedback">
                  			É obrigatório inserir um nome válido.
                	</div>
    			</div>
    			
    			<!-- CPF -->
    			<div class="col-6 mb-3">
    				<label>CPF</label>
    				<input type="text" name="cpf" class="form-control" required>
    				<div class="invalid-feedback">
                  			É obrigatório inserir um CPF.
                	</div>
    			</div>
    		</div>
    		
    		<!-- EMAIL -->
    		<div class="mb-3">
    			<label>E-mail</label>
    				<input type="email" name="email" class="form-control" required>
    				<div class="invalid-feedback">
                  			É obrigatório inserir um E-mail.
                	</div>
    		</div>
    		
    		<div class="row">
    			
    			<!-- TEL RESIDENCIAL -->
 				<div class="col-6 col-md-4">
 					<label>Tel Residencial</label>
    				<input type="text" name="telResidencial" class="form-control" >
 				</div>
 				
 				<!-- TEL COMERCIAL -->
 				<div class="col-6 col-md-4">
 					<label>Tel Comercial</label>
    				<input type="text" name="telComercial" class="form-control" >
 				</div>
 				
 				<!-- CELULAR -->
  				<div class="col-6 col-md-4">
  					<label>Celular</label>
    				<input type="text" name="celular" class="form-control">
  				</div>
  			</div>
  				
  				<hr class="mb-4">
  				
  				
  				<div class="row">
  					<!--Escritura -->
  					<div class="col-6 mb-3">
  						<input type="radio" name="doc" value="escritura"><span>Escritura</span>
  						<input type="radio" name="doc" value="contratoCompra"><span>Contrato de Compra</span>
  					</div >
  					
  					<!-- Propriedade -->
  					<div class="col-6 mb-3">
  						<input type="radio" name="morador" value="proprietario"><span>Proprietario</span>
  						<input type="radio" name="morador" value="inquilino"><span>Inquilino</span>
  					</div>	
  				</div>
  				
  				<hr class="mb-4">
  				
  				<div class="row">
    				<!-- VEICULO -->
    				<div class="col-6 mb-3">
    					<label>Placa do Veiculo</label>
    					<input type="text" name="veiculo" class="form-control">
    				</div>
    			
    				<!-- LOGIN -->
    				<div class="col-6 mb-3">
    					<label>Login</label>
    					<input type="text" name="login" class="form-control" required>
    					<div class="invalid-feedback">
                  			É obrigatório inserir um Login.
                		</div>
    				</div>
    			</div>
    			
    			<!-- SENHA -->
    			<div class="mb-3">
    				<label>Senha</label>
    					<input type="password" name="senha" class="form-control" required>
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