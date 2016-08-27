package br.com.fainor.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.fainor.model.Disciplina;
import br.com.fainor.model.Frequencia;

public class FrequenciaDao {

	private List<Frequencia> frequencias = new ArrayList<>();
	
	public List<Frequencia> todos() {
		return frequencias;
	}

	public void salvaFrequencia(Frequencia frequencia) {
		frequencias.add(frequencia);
	}
	
	public List<Frequencia> porDisciplina(Disciplina disciplina){
		List<Frequencia> lista = new ArrayList<>();
		for (Frequencia frequencia : frequencias) {
			if(frequencia.getDisciplina().getId()==disciplina.getId()){ //Foi utilizado o ID, pois pode não ser o mesmo objeto apontado na memória
				lista.add(frequencia);
			}
		}
		return lista;
	}
	
	public List<Frequencia> porDisciplinaEData(Disciplina disciplina,Date date){
		List<Frequencia> lista = new ArrayList<>();
		for (Frequencia frequencia : frequencias) {
			if((frequencia.getDisciplina().getId()==disciplina.getId())&&(frequencia.getData_frequencia().equals(date))){ //Foi utilizado o ID, pois pode não ser o mesmo objeto apontado na memória
				lista.add(frequencia);
			}
		}
		return lista;
	}
	
	public List<Date> datasDistintas(){
		List<Date> datas = new ArrayList<>();
		for(Frequencia frequencia : frequencias){
			Date data = frequencia.getData_frequencia();
			if(!datas.contains(data))
				datas.add(data);
		}
		return datas;
	}
	
	public List<Date> datasDistintasDisciplina(Disciplina disciplina){
		List<Date> datas = new ArrayList<>();
		for(Frequencia frequencia : this.porDisciplina(disciplina)){
			Date data = frequencia.getData_frequencia();
			if(!datas.contains(data))
				datas.add(data);
		}
		return datas;
	}
	
}