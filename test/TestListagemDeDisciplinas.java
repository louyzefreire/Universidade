package br.com.fainor.test;

import br.com.fainor.dao.DisciplinaDao;
import br.com.fainor.model.Disciplina;

public class TestListagemDeDisciplinas {

	public static void main(String[] args) {
		
		DisciplinaDao dao = new DisciplinaDao();
		for(Disciplina disciplina: dao.todos())
			
			System.out.println("Disciplina: "+ disciplina.getNome());
	}

}
