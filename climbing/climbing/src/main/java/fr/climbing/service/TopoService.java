package fr.climbing.service;

import java.util.List;

import fr.climbing.model.Topo;



public interface TopoService {
    
	public void saveTopo(Topo topo);
    
    public List<Topo> listTopoInfos();


    Topo findByToponame(String toponame);
 
    
	public Topo findTopo(int id);
	
	
	public void deleteTopo(int id);

	Topo findTopo1(int id);
    
    
    
}
