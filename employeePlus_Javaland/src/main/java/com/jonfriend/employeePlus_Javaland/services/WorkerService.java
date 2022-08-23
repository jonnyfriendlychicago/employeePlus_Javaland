package com.jonfriend.employeePlus_Javaland.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jonfriend.employeePlus_Javaland.models.Worker;
import com.jonfriend.employeePlus_Javaland.repositories.WorkerRepository;

@Service
public class WorkerService {
	
	@Autowired
	WorkerRepository workerRepo;
	
	//list all workers
	public List<Worker> getAllWorkers(){//the get all is being called in the first / on dashboard 
		return workerRepo.findAll();
	}
	
	// Get one by ID
	public Worker getById(Long id) {
		return workerRepo.findById(id).orElse(null);
	}
	
	// create new 
	public Worker saveWorker(Worker worker) {
		return workerRepo.save(worker);
	}
	
	//edit and update
	public Worker updateW(Worker worker) {
		return workerRepo.save(worker);

	}
	
	// Delete a Project
	public void delete(Long id) {
		workerRepo.deleteById(id);
	}
}
