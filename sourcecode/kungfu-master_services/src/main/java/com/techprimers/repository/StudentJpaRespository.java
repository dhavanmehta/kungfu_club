package com.techprimers.repository;

import com.techprimers.model.Students;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Optional;

@Component
public interface StudentJpaRespository extends JpaRepository<Students, Integer>{

    @Query(value = "select * from kungumaster.student s \n" +
            "inner join kungumaster.rank r on s.ST_ID = r.ST_ID\n" +
        //    "inner join kungumaster.belt_master b on b.BLT_ID = r.BLT_ID " +
            "", nativeQuery = true)
    public List<Students> findBelt();
//    Students findByStudents(String name);
}