package br.com.fainor.test;

import br.com.fainor.dao.AlunoDao;

public class TestBuscaUmAluno {

	public static void main(String[] args) {
		AlunoDao dao = new AlunoDao();
		
		System.out.println(dao.porId(2L).getNome());
	}

}
