package dao;



import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dto.MarksDto;






public class MarksCardDao {
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();

	
	public void marksinsert(MarksDto d1) {
		et.begin();
		em.persist(d1);
		et.commit();
	}


	public void marksupdate(MarksDto dto) {
		et.begin();
		em.merge(dto);
		et.commit();
	}


	public List<MarksDto> fetchall() {
		Query qu =em.createQuery("select data from MarksDto data");
		List<MarksDto> List = qu.getResultList();
		return  List;
		
	}


	public void deleteall(int sid) {
		MarksDto std1=em.find(MarksDto.class,sid );
		et.begin();
		em.remove(std1);
		et.commit();

		
	}


	public void update(MarksDto dto) {
		et.begin();
		em.merge(dto);
		et.commit();
		
	}
	
	public  MarksDto fetch(int sid) {

		MarksDto data =em.find(MarksDto.class, sid);

		return data;


	}


	
	

}
