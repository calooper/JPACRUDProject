package com.skilldistillery.campsites.data;

import java.util.List;

import com.skilldistillery.campsites.entities.Campsite;

public interface CampsiteDAO {
	
	Campsite findById(int id);
	public List<Campsite> getAllCampsites();
	public boolean deleteCampsite(int id);
	

}
