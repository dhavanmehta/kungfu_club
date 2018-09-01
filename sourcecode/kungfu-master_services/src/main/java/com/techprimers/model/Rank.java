package com.techprimers.model;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "rank")
public class Rank implements Serializable {

    @Id
    //@GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "RK_ID")
    private Integer id;
    @Column(name = "ST_ID")
    private Integer studentId;
    @Column(name = "BLT_ID")
    private Integer beltType;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinTable(name = "ST_ID")
    @JsonBackReference
    private Students students;

    public Rank() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public Integer getBeltType() {
        return beltType;
    }

    public void setBeltType(Integer beltType) {
        this.beltType = beltType;
    }

    public Students getStudents() {
        return students;
    }

    public void setStudents(Students students) {
        this.students = students;
    }
}