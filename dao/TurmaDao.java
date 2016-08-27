package br.com.fainor.dao;

import java.util.ArrayList;
import java.util.List;

import br.com.fainor.model.Turma;
import br.com.fainor.model.Turno;

public class TurmaDao {

	private List<Turma> turmas = new ArrayList<>();

	public List<Turma> todos() {

		turmas.add(new Turma(1L, "Engenharia da Computa��o", "4�" , Turno.MATUTINO));
		turmas.add(new Turma(2L, "Engenharia da Computa��o","4�", Turno.VESPERTINO));
		turmas.add(new Turma(3L, "Engenharia da Computa��o","4�", Turno.NOTURNO));

		return turmas;
	}

	public Turma porId(Long id) {

		for (Turma turma : todos()) {
			if (turma.getId() == id)
				return turma;
		}

		return null;
	}
}
