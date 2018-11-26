<%@page import="model.Proprietario"%>
<%@page import="java.util.List"%>
<%@page import="control.ProprietarioControl"%>
<%@ include file="/estrutura/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
	int limitePorPagina = 4;
	int paginaAtual;
	if (request.getParameter("pag") != null)
		paginaAtual = Integer.parseInt(request.getParameter("pag"));
	else
		paginaAtual = 1;
%>
<%
	ProprietarioControl pc = new ProprietarioControl();
	List<Proprietario> proprietarios = pc.listar(paginaAtual, limitePorPagina);
%>
<body>
<!-- modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="modalLabel">
  		<div class="modal-dialog" role="document">
    		<div class="modal-content">
      			<div class="modal-header">
        			<button type="button" class="close" data-dismiss="modal" aria-label="Fechar"><span aria-hidden="true">&times;</span></button>
        			
      			</div>
      			<div class="modal-body">
        			Deseja realmente excluir este item?
      			</div>
      			<div class="modal-footer">
        			<a href="" id="delRef" class="btn btn-danger">Excluir</a>
 					<button type="button" class="btn btn-default" data-dismiss="modal">N&atilde;o</button>
      			</div>
    		</div>
  		</div>
	</div> <!-- /.modal -->
<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h1>Proprietarios</h1>
		</div>
		<div class="col-md-6 text-right">
			<a href="../proprietario/cadastroProprietario.jsp"
				class="btn btn-success">Incluir</a>
		</div>
		<div class="col-md-12">
			<table class="table table-hover table-striped">
				<thead>
					<th>Login</th>
				</thead>
				<tbody>
					<%
					if(proprietarios != null)
						for(Proprietario proprietario : proprietarios) {
					%>
						<tr>
							<td>
							<% out.print(proprietario.getNome()); %>
							</td>
							<td class="mw-200">
								<a href="editarProprietario.jsp?id=<%=proprietario.getId() %>"class="btn btn-primary">Editar</a>
								<a href="crudProprietario.jsp?id=<%=proprietario.getId() %>&acao=excluirProprietario" class="btn btn-danger delBtn">Excluir</a>
							</td>
						</tr>
						<% } %>
					</tbody>
				
				</table>
		</div>
		<div class="col-md-12 text-center">

			<button onclick="paginaAnterior()" type="button"
				<%if (paginaAtual == 1)
				         out.print("disabled"); %>
				class="btn btn-lg btn-primary">P�gina Anterior</button>
			<button onclick="proximaPagina()" type="button"
				<%if (proprietarios == null)
				         out.print("disabled");
			          else if (proprietarios.size() == 0)
				               out.print("disabled");%>
				class="btn btn-secondary btn-lg">Pr�xima P�gina</button>
		</div>
	</div>
</div>
<!-- INICIO PAGINA��O PROPRIETARIO -->	
<script>
		function proximaPagina() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			location.href = "listarProprietario.jsp?pag=" + (parseInt(paginaAtual) + 1);
		}

		function paginaAnterior() {
			var results = new RegExp('[\?&]pag=([^&#]*)')
					.exec(window.location.href);
			var paginaAtual = 1;
			if (results != null)
				paginaAtual = results[1];
			if (parseInt(paginaAtual) > 1)
				location.href = "listarProprietario.jsp?pag=" + (parseInt(paginaAtual) - 1);
		}
</script>
<%@ include file="/estrutura/footer.jsp"%>
<!--FIM PAGINA��O PROPRIETARIO -->
</body>
</html>