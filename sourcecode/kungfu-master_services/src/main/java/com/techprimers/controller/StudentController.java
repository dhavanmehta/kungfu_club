package com.techprimers.controller;

import com.techprimers.model.Students;
import com.techprimers.repository.StudentJpaRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/kungfu")
public class StudentController {

    @Autowired
    private StudentJpaRespository studentJpaRespository;

    @GetMapping(value = "/student")
    public List<Students> findAll() {
        return studentJpaRespository.findAll();
    }

    @PostMapping(value = "/student")
    public Students load(@RequestBody final Students students) {
        return studentJpaRespository.save(students);
    }

//    @GetMapping(value = "/student/{mobile}")
//    public List findByStudents( @PathVariable("mobile") Integer mobile) {
//        return studentJpaRespository.findBelt(mobile);
//    }

    @GetMapping(value = "/student/findBelt")
    public List<Students> findByStudents() {
        return studentJpaRespository.findBelt();
    }
}