package br.com.fainor.dao;

import java.util.ArrayList;
import java.util.List;

import br.com.fainor.model.Aluno;

public class AlunoDao {

	public List<Aluno> todos(){
		
		List<Aluno> alunos = new ArrayList<>();
		
		alunos.add(new Aluno(1L,"Logan Wolverine","07227732","0202020"));
		alunos.add(new Aluno(2L,"Pato Donald","00000001","06060606"));
		alunos.add(new Aluno(3L,"McFly","0000004", "0320320320"));
		alunos.add(new Aluno(4L,"Maria","0000002", "07070707"));
		
		return alunos;
	}
	
	public Aluno porId(Long id){
		
		for(Aluno aluno: todos()){
			
			if(aluno.getId() == id){
				return aluno;
			}
		}
		return null;
	}
	
	public void salvaAluno(Aluno aluno){
		
		System.out.println("O aluno "+ aluno.getNome()+ " foi salvo(a)!");
	}
}
