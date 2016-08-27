package br.com.fainor.test;

import br.com.fainor.dao.AlunoDao;
import br.com.fainor.model.Aluno;

public class TestListagemDeAlunos {

	public static void main(String[] args) {
		
		AlunoDao dao = new AlunoDao();
		
		for (Aluno aluno: dao.todos()){
			System.out.println("Aluno(a): " + aluno.getNome() + " com RA: " + aluno.getRa());
		}
	}

}   

