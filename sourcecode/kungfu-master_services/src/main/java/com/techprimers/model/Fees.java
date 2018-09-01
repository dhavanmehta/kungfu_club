package com.techprimers.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "fees")
public class Fees {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="F_ID")
    private Integer id;
    @Column(name="ST_ID")
    private Integer studentId;
    @Column(name="PA_TYPE")
    private Integer paymentType;
    @Column(name="DATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date date;
    @Column(name="PURPOSE")
    private String purpose;

    public Fees() {
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

    public Integer getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(Integer paymentType) {
        this.paymentType = paymentType;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }
}
