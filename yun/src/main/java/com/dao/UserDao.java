package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import com.entity.UserEntity;

@Repository
public interface UserDao {
	void addUser(UserEntity user) throws Exception;

	List<UserEntity> findUser(UserEntity user) throws Exception;
	
	String getCountSize(String username);
	void reSize(@Param("username") String username,@Param("formatSize") String formatSize) throws Exception;
}