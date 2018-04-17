package com.team.mapping;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.team.model.Organization;

@Repository
public interface OrganizationMap {

	public Organization getOrganization(String account);
	
	public ArrayList<Organization> getOrganizations();
	
	public void insertOrganization(Organization organization);
	
	public void updateOrganization(Organization organization);

}
