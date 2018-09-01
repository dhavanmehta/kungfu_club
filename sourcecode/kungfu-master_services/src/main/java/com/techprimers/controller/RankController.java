package com.techprimers.controller;


import com.techprimers.model.Rank;
import com.techprimers.repository.RankJpaRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/kungfu")
public class RankController {

    @Autowired
    private RankJpaRespository rankJpaRespository;

    @GetMapping(value = "/rank")
    public List<Rank> findAll() {
        return rankJpaRespository.findAll();
    }

    @PostMapping(value = "/rank")
    public Rank load(@RequestBody final Rank rank) {
        return rankJpaRespository.save(rank);
    }

    @GetMapping(value = "/rank/findBelt")
    public List<Rank> findByStudents() {
        return rankJpaRespository.findBelt();
    }

}
