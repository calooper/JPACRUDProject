package com.skilldistillery.campsites.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.campsites.entities.Campsite;

@Transactional
@Service
public class CampsiteDAOJpaImpl implements CampsiteDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Campsite findById(int id) {

		return em.find(Campsite.class, id);

	}

	public List<Campsite> getAllCampsites() {

		String queryString = "SELECT c FROM Campsite c";

		List<Campsite> campsiteList = em.createQuery(queryString, Campsite.class).getResultList();
		
		
		return campsiteList;
	}
	
	public boolean deleteCampsite(int id ) {

		//String queryString = "SELECT c FROM Campsite c WHERE c.id= :id";
		Campsite a = em.find(Campsite.class, id);
		em.remove(a);

		return true;
	}

}
