package com.techprimers.repository;

import com.techprimers.model.Rank;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public interface RankJpaRespository extends JpaRepository<Rank, Integer>{
    @Query(value = "select s.ST_ID students_st_id, r.* from kungumaster.student s \n" +
            "inner join kungumaster.rank r on s.ST_ID = r.ST_ID\n" +
            //    "inner join kungumaster.belt_master b on b.BLT_ID = r.BLT_ID " +
            "", nativeQuery = true)
    public List<Rank> findBelt();
}
