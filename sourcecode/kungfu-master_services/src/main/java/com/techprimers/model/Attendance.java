package com.techprimers.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "attendance")
public class Attendance {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="AT_ID")
    private Integer id;
    @Column(name="STU_ID")
    private Integer studentId;
    @Column(name="CLS_SLOT")
    private Integer classSlot;
    @Column(name="CLS_TYPE")
    private Integer classType;
    @Column(name="AT_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;


    public Attendance() {
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

    public Integer getClassSlot() {
        return classSlot;
    }

    public void setClassSlot(Integer classSlot) {
        this.classSlot = classSlot;
    }

    public Integer getClassType() {
        return classType;
    }

    public void setClassType(Integer classType) {
        this.classType = classType;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
