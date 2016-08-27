package br.com.fainor.test;

import br.com.fainor.dao.ProfessorDao;

public class TestBuscaUmProfessor {

	public static void main(String[] args){			
			ProfessorDao dao = new ProfessorDao();
			
			System.out.println(dao.porId(1L).getNome());

	}
}