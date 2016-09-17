package ufg.atividade2.model;

public class VerificaAprovacao {
	private String nomeAluno;
	private Float mediaAluno;
	private Float frequenciaAluno;
	
	public VerificaAprovacao(String nomeAluno, Float mediaFinal, Float frequenciaPercentual){
		this.nomeAluno = nomeAluno;
		this.mediaAluno = mediaFinal;
		this.frequenciaAluno = frequenciaPercentual;
	}
	
	public String retornaStatusDoAluno(){
		
		//"Aprovado", "Reprovado por frequência", "Reprovado por média e frequência" ou "Reprovado por média"
		
		if (mediaAluno >= 6 && frequenciaAluno >= 75){
			return "Aprovado";
		} else if (mediaAluno < 6 && frequenciaAluno < 75){
			return "Reprovado por média e frequência";
		} else if(frequenciaAluno < 75) {
			return "Repovado por frequência";
		} else if(mediaAluno<6){
			return "Reprovado por média";
		} else {
			return "Não calculado";
		}
		 
	}
	
}

