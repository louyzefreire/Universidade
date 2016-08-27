package br.com.fainor.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.fainor.model.Aula;

public class AulaDao {

	public List<Aula> todos() {

		List<Aula> aulas = new ArrayList<>();
		ProfessorDao daoProfessor = new ProfessorDao();
		TurmaDao daoTurma = new TurmaDao();
		SalaDao daoSala = new SalaDao();
		
		aulas.add(new Aula(1L, daoProfessor.porId(1L), daoTurma.porId(1L), daoSala.porId(1L), new Date(), "Assunto I"));
		aulas.add(new Aula(2L, daoProfessor.porId(2L), daoTurma.porId(2L), daoSala.porId(2L), new Date(), "Assunto II"));
		aulas.add(new Aula(3L, daoProfessor.porId(2L), daoTurma.porId(2L), daoSala.porId(2L), new Date(), "Assunto III"));

		return aulas;
	}

	public Aula porId(Long id) {

		for (Aula aula : todos()) {
			if (aula.getId() == id)
				return aula;
		}

		return null;
	}
	
}
