package ufg.atividade2.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ufg.atividade2.model.VerificaAprovacaoModel;


@WebServlet(value = "")
public class VerificaAprovacaoController extends javax.servlet.http.HttpServlet {
	@Override
	protected void service(HttpServletRequest request,HttpServletResponse response) throws IOException, ServletException{
		String alunoStr = (request.getParameter("aluno")==null || request.getParameter("aluno").isEmpty()?"":request.getParameter("aluno")) ;
		
		String frequenciaStr = request.getParameter("frequencia");
		Float frequencia = (frequenciaStr== null || frequenciaStr.isEmpty()?0:Float.parseFloat(frequenciaStr));
		
		String notaStr = request.getParameter("nota");
		Float nota = (notaStr == null || notaStr.isEmpty()?0:Float.parseFloat(notaStr));
		
		VerificaAprovacaoModel testaAluno = new VerificaAprovacaoModel(alunoStr,nota,frequencia);
		String statusDoAluno = testaAluno.retornaStatusDoAluno();
	    //Passagem de atributos para o JSP.
		request.getSession().setAttribute("statusDoAluno", statusDoAluno);

	    //Chamando o JSP.
	    String proximaPagina = "/index.jsp";
	    RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(proximaPagina);
	    dispatcher.forward(request, response);

	}
}
