package com.team.mapping;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.team.model.Demand;


//需求表操作接口
@Repository
public interface DemandMap {
	public void insertDemand(Demand demand);    //插入需求
	
	public ArrayList<Demand> get_Demand();   //得到全部需求
	
	public ArrayList<Demand> Demand_industry(String industry);   //根据行业得到需求
    
	public ArrayList<Demand> get_demand_account(String account);    //根据账号得到需求
	
	public Demand get_demand_id(int demand_id);
}
