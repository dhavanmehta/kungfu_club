package com.techprimers.repository;

import com.techprimers.model.Parents;
import com.techprimers.model.Students;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface ParentJpaRespository extends JpaRepository<Parents, Integer>{

//    Students findByStudents(String name);
}
