package br.com.fainor.model;

public class Sala {

	private Long id;
	private String descricao;
	private TipoSala tipoSala;
	private String numero;

	public Sala(Long id, String numero){
		
		this.id = id;
		this.numero = numero;
		
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public TipoSala getTipoSala() {
		return tipoSala;
	}

	public void setTipo_sala(TipoSala tipoSala) {
		this.tipoSala = tipoSala;
	}

	public String getNumero() {
		return numero;
	}

	public void setNumero(String numero) {
		this.numero = numero;
	}
}
