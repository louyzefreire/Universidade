package br.com.fainor.model;

public class Turma {

	private Long id;
	private String periodo;
	private Turno turno;
	private String descricao;

	public Turma(Long id, String descricao, String periodo, Turno turno){
		
		this.id = id;
		this.descricao = descricao;
		this.periodo = periodo;
		this.turno = turno;
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getPeriodo() {
		return periodo;
	}

	public void setPeriodo(String periodo) {
		this.periodo = periodo;
	}

	public Turno getTurno() {
		return turno;
	}

	public void setTurno(Turno turno) {
		this.turno = turno;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
}
