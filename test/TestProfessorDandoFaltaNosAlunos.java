package br.com.fainor.test;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xml.crypto.Data;

import br.com.fainor.dao.AlunoDao;
import br.com.fainor.dao.AulaDao;
import br.com.fainor.dao.DisciplinaDao;
import br.com.fainor.dao.FrequenciaDao;
import br.com.fainor.model.Disciplina;
import br.com.fainor.model.Frequencia;

public class TestProfessorDandoFaltaNosAlunos {

	public static void main(String[] args) {
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yy");
		DisciplinaDao daoDisciplina = new DisciplinaDao();
		FrequenciaDao daoFrequencia = new FrequenciaDao();
		AlunoDao daoAluno = new AlunoDao();
		AulaDao daoAula = new AulaDao();
		
		daoFrequencia.salvaFrequencia(new Frequencia(1L, daoAluno.porId(1L), daoDisciplina.porId(2L), daoAula.porId(2L), new Date(), true));
		daoFrequencia.salvaFrequencia((new Frequencia(2L, daoAluno.porId(1L), daoDisciplina.porId(1L), daoAula.porId(1L), new Date(), true)));
		daoFrequencia.salvaFrequencia((new Frequencia(3L, daoAluno.porId(4L), daoDisciplina.porId(3L), daoAula.porId(3L), new Date(), false)));
		daoFrequencia.salvaFrequencia((new Frequencia(3L, daoAluno.porId(2L), daoDisciplina.porId(3L), daoAula.porId(3L), new Date(), true)));
		daoFrequencia.salvaFrequencia((new Frequencia(3L, daoAluno.porId(2L), daoDisciplina.porId(3L), daoAula.porId(3L), new Date(2016,7,25), false)));
		
		for (Disciplina disciplina : daoDisciplina.todos()) {
			System.out.println(disciplina);
			for(Date data : daoFrequencia.datasDistintasDisciplina(disciplina)){
				System.out.println("Lista de frequencia na data: "+df.format(data));
				for(Frequencia frequencia : daoFrequencia.porDisciplinaEData(disciplina, data)){
					System.out.println(frequencia);
				}
			}
			
			
		}
		
	}
}