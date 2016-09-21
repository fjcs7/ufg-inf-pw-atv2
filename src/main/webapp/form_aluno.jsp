
<form method="post">
		<div class="container">
		  <div class="form-group row col-md-4">
		  	<h1>Verfica se o Aluno Está Aprovado</h1>
		  </div>
	    </div>
		<div class="container">
		  <div class="form-group row col-md-4">
		    <label for="aluno">Aluno(a): </label>
		    <input required="required" id="aluno" name="aluno" value="${param.aluno}" autocomplete="off"  type="text"  placeholder="Informe o nome do aluno..." class="form-control">
		  </div>
	    </div>
	    <div class="container">
		  <div class="form-group row col-md-4">
		    <label for="nota">Média Final:</label>
		    <input required="required" min="0.0" max="10.0" value="${param.nota}" autocomplete="off" type="number" step=0.1 placeholder="0.0" class="form-control" name="nota" id="nota">
		  </div>
	    </div>
   	    <div class="container">
		  <div class="form-group row col-md-4">
		    <label for="frequencia">Frequência(%):</label>
		    <input required="required" min="0.0" max="100.0" value="${param.frequencia}" autocomplete="off" type="number" step=0.1 placeholder="00.0" class="form-control" name="frequencia" id="frequencia">
		  </div>
	    </div>
		<div class="container">
		  <button type="submit" 
		  		  class="btn btn-default" name="btnCalcular">Verificar</button> 
		  <input hidden="true" name="status" id="status" value="${statusDoAluno}">
		</div>
</form>
<p></p>
<p></p>
		<% 	
			if(request.getParameter("aluno")!= null && request.getParameter("status")!= null ){
				out.println("<div class=\"alert alert-success\" role=\"alert\">" + 
						    "O Aluno(a) <strong>" + request.getParameter("aluno") + "</strong>..." +
							"Está com Status <strong>" + request.getParameter("status") +"</strong></div>");
			}
		%> 