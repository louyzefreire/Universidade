package br.com.fainor.dao;

import java.util.ArrayList;
import java.util.List;

import br.com.fainor.model.Professor;

public class ProfessorDao {

	private List<Professor> professores = new ArrayList<>();

	public List<Professor> todos() {

		professores.add(new Professor(1L, "Débora Neves", "0000005"));
		professores.add(new Professor(2L, "Milton Leão", "0000006"));
		professores.add(new Professor(3L, "Carlos Takiya", "0000007"));

		return professores;
	}

	public Professor porId(Long id) {

		for (Professor professor : todos()) {
			if (professor.getId() == id)
				return professor;
		}

		return null;
	}

	public void salvaProfessor(Professor professor) {

		professores.add(professor);

	}

}
