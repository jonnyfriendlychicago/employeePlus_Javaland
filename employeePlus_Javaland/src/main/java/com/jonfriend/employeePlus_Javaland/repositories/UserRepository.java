package com.jonfriend.employeePlus_Javaland.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.jonfriend.employeePlus_Javaland.models.User;




@Repository
public interface UserRepository extends CrudRepository<User, Long>{
	//add email info to see if the email is taken
		Optional<User> findByEmail(String email);
}
