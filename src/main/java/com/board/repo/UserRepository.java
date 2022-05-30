package com.board.repo;

import com.board.entity.UserEntity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Long>{
    @Query(value = "select u from kh_user u where u.user_loginid = ?1 and u.user_loginpwd = ?2")
    public UserEntity findByIdAndPassword(String id, String pwd);

    @Query(value = "select u from kh_user u where u.user_loginid = ?1")
    public UserEntity findByUserId(String userid);

    @Query(value = "select max(u.user_id) from kh_user u where 1=1")
    public int findNextId();
    
}
