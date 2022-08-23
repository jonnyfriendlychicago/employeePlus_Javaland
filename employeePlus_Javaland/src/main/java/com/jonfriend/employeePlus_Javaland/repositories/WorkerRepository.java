package com.jonfriend.employeePlus_Javaland.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jonfriend.employeePlus_Javaland.models.User;
import com.jonfriend.employeePlus_Javaland.models.Worker;

@Repository
public interface WorkerRepository extends CrudRepository<Worker, Long>{
	List<Worker> findAll();
	List<Worker> findByUser(User user);
}
