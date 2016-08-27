package br.com.fainor.test;

import br.com.fainor.dao.ProfessorDao;
import br.com.fainor.model.Professor;

public class TestListagemDeProfessores {

	public static void main(String[] args) {
		
		ProfessorDao dao = new ProfessorDao();
		
		for (Professor professor: dao.todos()){
			System.out.println("Professor(a): " + professor.getNome());
		}
	}

}
