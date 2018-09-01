package com.techprimers.controller;



import com.techprimers.model.Attendance;
import com.techprimers.repository.AttendanceJpaRespository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/kungfu")
public class AttendanceController {

    @Autowired
    private AttendanceJpaRespository attendanceJpaRespository;

    @GetMapping(value = "/attendance")
    public List<Attendance> findAll() {
        return attendanceJpaRespository.findAll();
    }

    @PostMapping(value = "/attendance")
    public Attendance load(@RequestBody final Attendance attendance) {
        return attendanceJpaRespository.save(attendance);
    }
}
