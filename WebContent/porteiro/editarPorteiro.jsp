<%@page import="model.Condominio"%>
<%@page import="java.util.List"%>
<%@page import="control.CondominioControl"%>
<%@page import="model.Porteiro"%>
<%@page import="control.PorteiroControl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	long id = Long.parseLong(request.getParameter("id"));
	PorteiroControl pc = new PorteiroControl();
	Porteiro p = pc.buscarPorId(id);
	CondominioControl cc = new CondominioControl();
	List<Condominio> condominios = cc.listarSemPage();
%>
<body class="bg-light" style="margin-top: 5%;">
	<div class="container">		
			<form action="../porteiro/crudPorteiro.jsp" method="POST">
				<input type="hidden" name="acao" value="editarPorteiro">
				<input type="hidden" name="tipoUsuario" value="porteiro"><!--Não alterar este campo-->
				<input type="hidden" name="id" value="<%=p.getId()%>">
    			
    			<span class="contact100-form-title">
    				Editar Porteiro
    			</span>
    			
    			<div class="row">
    			
    				<!-- NOME -->
              		<div class="col-6 mb-3">
                		<label>Nome</label>
                		<input type="text" name="nome" class="form-control" placeholder="Pedro Trabalha na Itaipu" value="<%=p.getNome()%>" required>
                		<div class="invalid-feedback">
                  			É obrigatório inserir um nome válido.
                		</div>
              		</div>
              		
              		<!-- CPF -->
              		<div class="col-6 mb-3">
                		<label>CPF</label>
                		<input type="text" name="cpf" class="form-control" placeholder="111.111.111-11" value="<%=p.getCpf()%>" required>
                		<div class="invalid-feedback">
                  			É obrigatório inserir um sobre CPF válido.
                		</div>
              		</div>
            	</div>
            	
            	<!-- EMAIL -->
    			<div class="mb-3">
              		<label>E-mail</label>
              		<div class="input-group">
                		<input type="email" name="email" class="form-control" placeholder="exemple@exemple.com" value="<%=p.getEmail()%>" required>
                		<div class="invalid-feedback" style="width: 100%;">
                  			Seu E-mail é obrigatório.
                		</div>
              		</div>
            	</div>
            	
            	<div class="row">
            		<!-- TELEFONE -->
            		<div class="col-6 mb-3">
            			<label>Telefone</label>
            			<input type="text" placeholder="(11)1111-1111" class="form-control" name="telefone" value="<%=p.getTelefone()%>">
            		</div>
            		
            		<!-- CELULAR -->
            		<div class="col-6 mb-3">
            			<label>Celular</label>
            			<input type="text" class="form-control" placeholder="(11) 1 1111-1111" name="celular" value="<%=p.getCelular()%>">
            		</div>
            	</div>
            	
            	<!-- SELEÇAO DE CONDOMINIO -->
            	<div class="mb-3">
            		<label>Selecione o Condominio</label>
            		<select class="form-control" id="condominio" name="condominio" >
       					<option>Selecione o Condominio</option>
      						<%for(Condominio c: condominios){
          						out.print("<option value='" + c.getId() + "'>"+ c.getNome() + "</option>");
        						} 
      						%>
    				</select>
    			</div>
    			
    			<div class="row">	
    				<!-- LOGIN -->
              		<div class="col-6 mb-3">
                		<label>Login</label>
                		<input type="text" name="login" class="form-control" value="<%=p.getLogin()%>" required>
                		<div class="invalid-feedback">
                  			É obrigatório inserir um login válido.
                		</div>
              		</div>
              		
              		<!-- SENHA -->
              		<div class="col-6 mb-3">
                		<label >Senha</label>
                		<input type="password" name="senha" class="form-control" value="<%=p.getSenha()%>" required>
                		<div class="invalid-feedback">
                  			É obrigatório inserir uma senha válida.
                		</div>
              		</div>
            	</div>
            	<button class="btn btn-primary btn-lg btn-block" type="submit">Salvar</button>
			</form>
	</div>
	<%@ include file="/estrutura/footer.jsp"%>
</body>
</html>