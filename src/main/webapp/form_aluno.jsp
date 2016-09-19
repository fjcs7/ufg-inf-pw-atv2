<%@ page import="ufg_inf_pw_2016_2_atv01.calculadora_de_imc.*"%>
<form method="post">
		<div class="container">
		  <div class="form-group row col-md-4">
		  	<h1>Calculadora de IMC</h1>
		  	<h3>IMC - Índice de massa corpórea</h3>
		  </div>
	    </div>
		<div class="container">
		  <div class="form-group row col-md-4">
		    <label for="altura">Sua altura: </label>
		    <input required="required" min="0.01" value="${param.altura}" autocomplete="off"  type="number" step=0.01 placeholder="0.00" class="form-control" name="altura" id="altura">
		  </div>
	    </div>
	    <div class="container">
		  <div class="form-group row col-md-4">
		    <label for="peso">Seu Peso:</label>
		    <input required="required" min="00.01" value="${param.peso}" autocomplete="off" type="number" step=0.01 placeholder="00.0" class="form-control" id="peso" name="peso">
		  </div>
	    </div>
	    <div class="container">
		  <div class="form-goup row col-md-4">
				<label for="sexo">Sexo:</label>
				<select name="sexo" id="sexo" class="form-control" >
				  <option <% if(request.getParameter("sexo")!=null) out.println( request.getParameter("sexo").equals("M")?"selected":""); %> value="M">Masculino</option>
				  <option <% if(request.getParameter("sexo")!=null) out.println( request.getParameter("sexo").equals("F")?"selected":""); %>  value="F">Feminino</option>
				</select>
		   </div>
	    </div>
	    <div class="container">
			<label class="bg-danger">Obs.: O cálculo é diferenciado para homens e mulheres.</label>
		</div>
		<div class="container">
		  <button type="submit" 
		  		  class="btn btn-default" name="btnCalcular">Calcular</button> 
		</div>
</form>
<p></p>
		<% if( request.getParameter("altura") != null &&  
			   request.getParameter("peso") != null &&
			   request.getParameter("sexo")!= null){
			 	CalculaImc calculadora = new CalculaImc(
						Double.parseDouble(request.getParameter("altura")),
						Double.parseDouble(request.getParameter("peso")),
						request.getParameter("sexo"));
			 	out.println("<div class=\"container\">");
			 	out.println("  <div class=\"form-goup row col-md-12\">");
			 	out.println("		<label><h3>O Seu Imc é        :... " + calculadora.RetornaImcCalculado()+ "</h3></label>");
			 	out.println("  </div>");
			 	out.println("  </div>");
			 	out.println("<div class=\"container\">");
			 	out.println("  <div class=\"form-goup row col-md-12\">");
			 	out.println("		<label><h3>O Seu Resultado foi:... " + calculadora.RetornaImcCalculado()+ "</h3></label>");
			 	out.println("  </div>");
			 	out.println("</div>");
			}
		%> 