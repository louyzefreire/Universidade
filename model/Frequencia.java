package br.com.fainor.model;

import java.util.Date;

public class Frequencia {

	private Long id;
	private Aluno aluno;
	private Disciplina disciplina;
	private Aula aula;

	public Aula getAula() {
		return aula;
	}

	public void setAula(Aula aula) {
		this.aula = aula;
	}

	private Date data_frequencia;
	private Boolean faltou;

	public Frequencia(Long id, Aluno aluno, Disciplina disciplina, Aula aula, Date data_frequencia,
			Boolean faltou) {

		this.id = id;
		this.aluno = aluno;
		this.aula = aula;
		this.data_frequencia = data_frequencia;
		this.disciplina = disciplina;
		this.faltou = faltou;

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

	public Disciplina getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(Disciplina disciplina) {
		this.disciplina = disciplina;
	}

	public Date getData_frequencia() {
		return data_frequencia;
	}

	public void setData_frequencia(Date data_frequencia) {
		this.data_frequencia = data_frequencia;
	}

	public Boolean getFaltou() {
		return faltou;
	}

	public void setFaltou(Boolean faltou) {
		this.faltou = faltou;
	}

	@Override
	public String toString() {
		
		return this.aluno.getNome() + " "+(faltou?"faltou":"esteve presente");
	}
}
