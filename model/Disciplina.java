package br.com.fainor.model;

public class Disciplina {
	
	private Long id;
	private String codigo;
	private String nome;

	public Disciplina(Long id, String codigo, String nome){
		
		this.id = id;
		this.codigo = codigo;
		this.nome = nome;
		
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Override
	public String toString(){
		return "ID: "+id+" | Disciplina: "+nome+" | Código: "+codigo;
	}

}
