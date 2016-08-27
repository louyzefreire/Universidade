package br.com.fainor.dao;

import java.util.ArrayList;
import java.util.List;

import br.com.fainor.model.Disciplina;

public class DisciplinaDao {
	
	public List<Disciplina> todos() {

		List<Disciplina> disciplinas = new ArrayList<>();

		disciplinas.add(new Disciplina(1L, "ENG-001", "Metodologia da Pesquisa Científica"));
		disciplinas.add(new Disciplina(2L, "ENG-002", "Mecânica Geral"));
		disciplinas.add(new Disciplina(3L, "ENG-003","Física III"));

		return disciplinas;
	}

	public Disciplina porId(Long id) {

		for (Disciplina disciplina : todos()) {
			if (disciplina.getId() == id)
				return disciplina;
		}

		return null;
	}

}
