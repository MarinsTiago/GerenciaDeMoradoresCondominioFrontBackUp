<%@page import="model.Proprietario"%>
<%@page import="model.Morador"%>
<%@page import="java.util.List"%>
<%@page import="control.ProprietarioControl"%>
<%@page import="control.MoradorControl"%>
<%@page import="model.Apartamento"%>
<%@page import="control.ApartamentoControl"%>
<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="bg-light" style="margin-top: 5%;">
<%
//setei um valor alto pois estava limitando a 
//listagem de morador ou proprietario nos selects
	int limitePorPagina = 400000;
	int paginaAtual;
	if (request.getParameter("pag") != null)
		paginaAtual = Integer.parseInt(request.getParameter("pag"));
	else
		paginaAtual = 1;
%>
<%
	long id = Long.parseLong(request.getParameter("id"));
	ApartamentoControl ac = new ApartamentoControl();
	Apartamento a = ac.buscarPorId(id);
	MoradorControl mc = new MoradorControl();
	ProprietarioControl pc = new ProprietarioControl();
	List<Morador> moradores = mc.listar(paginaAtual, limitePorPagina);
	List<Proprietario> proprietarios = pc.listar(paginaAtual, limitePorPagina);
%>

	<div class="container">
		<form action="../apartamento/crudApartamento.jsp" method="POST">
			<input type="hidden" name="acao" value="editarApartamento">
			<input type="hidden" name="id" value="<%=a.getId()%>">
			
			<span class="contact100-form-title">
    				Cadastro Apartamento
    		</span>
    		
    		<div class="row">
    			<!-- Numero -->
    			<div class="col-6 mb-3">
    				<label>Numero do Apartamento</label>
    				<input type="number" name="numero" class="form-control" value="<%=a.getNumero()%>" required>
    				<div class="invalid-feedback">
                  			É obrigatório inserir um numero válido.
                	</div>
    			</div>
    			
    			<!-- Bloco -->
    			<div class="col-6 mb-3">
    				<label>Bloco do apartamento</label>
    				<input type="text" name="bloco" class="form-control" value="<%=a.getBloco()%>" required>
    				<div class="invalid-feedback">
                  			É obrigatório inserir o bloco do apartamento.
                	</div>
    			</div>
    		</div>
    		
    		<!-- MORADOR -->
    		<div class="mb-3">
            	<label>Selecione o Morador</label>
            	<select class="form-control" id="morador" name="morador" >
       				<option value="0">Selecione o morador</option>
    					<%for(Morador m: moradores){
        					out.print("<option value='" + m.getId() + "'>"+ m.getNome() + "</option>");
      						} 
    					%>
    			</select>
    		</div>
    		
    		<!-- PROPRIETARIO -->
    		<div class="mb-3">
            	<label>Selecione o Proprietario</label>
            	<select class="form-control" id="proprietario" name="proprietario">
      				<option>Selecione o proprietario</option>
      					<%for(Proprietario p: proprietarios){
        					out.print("<option value='" + p.getId() + "'>"+ p.getNome() + "</option>");
      						} 
    					%>
    			</select>
    		</div>
    		
    		<hr class="mb-4">
    		
    		<!-- APARTAMENTO OCUPADO? -->
    		<div class="mb-3 ">
              <label >Apartamento Ocupado?</label>
              <input type="checkbox" name="ocupado"><span>Sim</span>
            </div>
            
            <hr class="mb-4">
            
             <button class="btn btn-primary btn-lg btn-block" type="submit">Salvar</button>   		
		</form>
	</div>
</body>
</html>