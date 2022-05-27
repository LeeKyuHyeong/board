package com.board.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
@Entity(name = "kh_user")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long user_id;

    @Column(nullable = false, length = 45)
    private String user_loginid;

    @Column(nullable = false, length = 1024)
    private String user_loginpwd;

    @Column(nullable = false, length = 10)
    private String user_name;

    @Column(nullable = false, length = 255)
    private String user_email;

    @Column(nullable = false, length = 13)
    private String user_phone;

    @Column(nullable = true, length = 10)
    private String user_addr;

    @Column(nullable = true, length = 45)
    private String user_gameid;

    @Column(nullable = true, length = 3)
    private String user_type;

    @Column(nullable = true, length = 45)
    private String create_loginid;

    @Column(nullable = true)
    private String create_dt;

    @Column(nullable = true, length = 45)
    private String upate_loginid;

    @Column(nullable = true)
    private String update_dt;

    @Column(nullable = false, length = 1)
    private String use_yn;

    public UserEntity() {

    }
}
