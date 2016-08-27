package br.com.fainor.dao;

import java.util.ArrayList;
import java.util.List;

import br.com.fainor.model.Sala;

public class SalaDao {

	private List<Sala> salas = new ArrayList<>();

	public List<Sala> todos() {

		salas.add(new Sala(1L, "42"));
		salas.add(new Sala(2L, "44"));
		salas.add(new Sala(3L, "46"));

		return salas;
	}

	public Sala porId(Long id){
		for (Sala sala : todos()){ 
			if (sala.getId() == id)
				return sala;
		}
		return null;
	}
}
