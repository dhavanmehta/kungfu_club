package com.techprimers.controller;

import com.techprimers.model.Parents;
import com.techprimers.repository.ParentJpaRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/kungfu")
public class ParentController {

    @Autowired
    private ParentJpaRespository parentJpaRespository;

    @GetMapping(value = "/parent")
    public List<Parents> findAll() {
        return parentJpaRespository.findAll();
    }

    @PostMapping(value = "/parent")
    public Parents load(@RequestBody final Parents parents) {
        return parentJpaRespository.save(parents);
    }
}
