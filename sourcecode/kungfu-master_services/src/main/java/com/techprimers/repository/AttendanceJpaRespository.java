package com.techprimers.repository;

import com.techprimers.model.Attendance;
import com.techprimers.model.Fees;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

@Component
public interface AttendanceJpaRespository extends JpaRepository<Attendance, Integer>{

//    Students findByStudents(String name);
}
