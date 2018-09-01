package com.techprimers.model;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "parents")
public class Parents {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="PR_ID")
    private Integer id;
    @Column(name="ST_ID")
    private Integer st_id;
    @Column(name="PR_NAME",nullable = false)
    private String name;
    @Column(name="PR_MOBILENO",nullable = false)
    private Integer mobile;
    @Column(name="PR_EMAIL",nullable = false)
    private String email;

  //  private Set<Students> studentsSet;

    public Parents() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getSt_id() {
        return st_id;
    }

    public void setSt_id(Integer st_id) {
        this.st_id = st_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

//    @OneToMany(mappedBy = "parents", cascade = CascadeType.ALL)
//    public Set<Students> getStudentsSet() {
//        return studentsSet;
//    }
//
//    public void setStudentsSet(Set<Students> studentsSet) {
//        this.studentsSet = studentsSet;
//    }
}
