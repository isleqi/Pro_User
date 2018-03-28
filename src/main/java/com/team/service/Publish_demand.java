package com.team.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.mapping.DemandMap;
import com.team.model.Demand;

@Service
public class Publish_demand {
	@Autowired
	DemandMap demandmap;
	
	public void insert_demand(Demand demand) {
		demandmap.insertDemand(demand);
	}
	

}
