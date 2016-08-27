package br.com.fainor.model;

import java.util.ArrayList;
import java.util.List;

public class Professor extends Pessoa {

	private String matricula;
	private List<Aula> aulas = new ArrayList<>();

	public Professor(Long id, String nome, String cpf) {
		
		super(id, nome, cpf);

	}

	public List<Aula> getAulas() {
		return aulas;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}
}