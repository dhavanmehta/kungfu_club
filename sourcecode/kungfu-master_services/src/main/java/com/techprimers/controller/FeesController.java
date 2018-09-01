package com.techprimers.controller;


import com.techprimers.model.Fees;
import com.techprimers.repository.FeeJpaRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/kungfu")
public class FeesController {

    @Autowired
    private FeeJpaRespository feeJpaRespository;

    @GetMapping(value = "/fee")
    public List<Fees> findAll() {
        return feeJpaRespository.findAll();
    }

    @PostMapping(value = "/fee")
    public Fees load(@RequestBody final Fees fees) {
        return feeJpaRespository.save(fees);
    }
}
