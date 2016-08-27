package br.com.fainor.model;

import java.util.Date;

public class Aula {

	private Long id;
	private Professor professor;
	private Turma turma;
	private Sala sala;
	private Date dataAula;
	private String conteudo;

	public Aula(Long id, Professor professor, Turma turma, Sala sala, Date dataAula, String conteudo) {

		this.id = id;
		this.professor = professor;
		this.turma = turma;
		this.sala = sala;
		this.dataAula = dataAula;
		this.conteudo = conteudo;
	}

	public Professor getProfessor() {
		return professor;
	}

	public void setProfessor(Professor professor) {
		this.professor = professor;
	}

	public Turma getTurma() {
		return turma;
	}

	public void setTurma(Turma turma) {
		this.turma = turma;
	}

	public Sala getSala() {
		return sala;
	}

	public void setSala(Sala sala) {
		this.sala = sala;
	}

	public Date getDataAula() {
		return dataAula;
	}

	public void setDataAula(Date dataAula) {
		this.dataAula = dataAula;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getConteudo() {
		return conteudo;
	}

	public void setConteudo(String conteudo) {
		this.conteudo = conteudo;
	}

}
