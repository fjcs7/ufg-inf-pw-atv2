package ufg.atividade2.model;

public class VerificaAprovacaoModel {
	private String nomeAluno;
	private Float mediaAluno;
	private Float frequenciaAluno;
	
	public VerificaAprovacaoModel(String nomeAluno, Float mediaFinal, Float frequenciaPercentual){
		this.nomeAluno = nomeAluno;
		this.mediaAluno = mediaFinal;
		this.frequenciaAluno = frequenciaPercentual;
	}
	
	public VerificaAprovacaoModel(String nomeAluno, Double mediaFinal, Double frequenciaPercentual){
		this.nomeAluno = nomeAluno;
		this.mediaAluno = Float.parseFloat(mediaFinal.toString());
		this.frequenciaAluno =  Float.parseFloat(frequenciaPercentual.toString());
	}
	
	public String retornaStatusDoAluno(){
		
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
	
	public String obtenhaNomeDoAluno(){
		return this.nomeAluno;
	}
	
}

