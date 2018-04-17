package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.mapping.DemandMap;
import com.team.model.Demand;

@Service                                 //获取需求列表
public class Demand_list {
	@Autowired
	DemandMap demandmap;
	
	public ArrayList<Demand> get_demand(){               //得到全部需求
		ArrayList<Demand> ans=new ArrayList<>();
		ans=demandmap.get_Demand();
		return ans;
	}
	
	public ArrayList<Demand> demand_industry(String industry){    //按照行业得到需求
		ArrayList<Demand> ans=new ArrayList<>();
		ans=demandmap.Demand_industry(industry);
		return ans;
        
	}
	
	public ArrayList<Demand> get_demand_account(String account){
		return demandmap.get_demand_account(account);
	}
	
	public Demand get_demand_id(int demand_id) {
		return demandmap.get_demand_id(demand_id);
	}

}
