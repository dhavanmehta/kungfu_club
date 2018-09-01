package com.techprimers.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "student")
public class Students implements Serializable{

    @Id
    //put generated after doing auto increment
    @Column(name="ST_ID")
    private Integer id;
    @Column(name="ST_NAME")
    private String name;
    @Column(name="ST_DOB")
    @Temporal(TemporalType.TIMESTAMP)
    private Date dob;
    @Column(name="ST_JOINDATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date joinDate;
    @Column(name="ST_MOBILENO")
    private Integer mobile;
    @Column(name="EMAIL")
    private String email;
    @Column(name="ADRESS")
    private String address;

    @OneToMany(mappedBy = "students", fetch = FetchType.EAGER)
    private Collection<Rank> rank = new ArrayList<Rank>();

    public Students() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public Date getJoinDate() {
        return joinDate;
    }

    public void setJoinDate(Date joinDate) {
        this.joinDate = joinDate;
    }

    public Integer getMobile() {
        return mobile;
    }

    public void setMobile(Integer mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Collection<Rank> getRank() {
        return rank;
    }

    public void setRank(Collection<Rank> rank) {
        this.rank = rank;
    }

    //foreign keys

//    @ManyToOne
//    @JoinColumn(name = "ST_ID")
//    public Parents getParents() {
//         return parents;
//    }
//
//    public void setParents(Parents parents) {
//        this.parents = parents;
//    }
}
