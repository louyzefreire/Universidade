package br.com.fainor.test;

import br.com.fainor.dao.DisciplinaDao;

public class TestBuscaUmaDisciplina {

	public static void main(String[] args) {

		DisciplinaDao dao = new DisciplinaDao();
		
		System.out.println(dao.porId(3L).getNome());

	}

}
