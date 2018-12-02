<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="bg-light" style="margin-top: 5%;">
	<div class="container">
		<form action="../condominio/crudCondominio.jsp" method="post">
			<input type="hidden" name="acao" value="incluirCondominio">
			
			<span class="contact100-form-title">
    				Cadastro Condominio
    		</span>
    		
    		<div class="col">
    			<label>Nome</label>
    				<input type="text" name="nome" class="form-control" required>
    				<div class="invalid-feedback">
                  			É obrigatório inserir o nome.
                	</div>
    		</div>
    		
    		<hr class="mb-4">
    		
    		<button class="btn btn-primary btn-lg btn-block" type="submit">Salvar</button>
		</form>
	</div>
</body>
</html>