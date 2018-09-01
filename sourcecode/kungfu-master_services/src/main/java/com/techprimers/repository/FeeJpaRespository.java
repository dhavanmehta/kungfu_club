package com.techprimers.repository;

import com.techprimers.model.Fees;
import com.techprimers.model.Students;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface FeeJpaRespository extends JpaRepository<Fees, Integer>{

//    Students findByStudents(String name);
}
