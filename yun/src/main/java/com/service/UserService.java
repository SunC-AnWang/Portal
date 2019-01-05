package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.UserDao;
import com.entity.UserEntity;
import com.util.UserUtil;

@Service
public class UserService {
	@Autowired
	private UserDao userDao;
		public boolean addUser(UserEntity user){
		try {
			user.setPassword(UserUtil.MD5(user.getPassword()));
			userDao.addUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
		
		/**
		 * 查找用户
		 * @param user
		 * @return
		 */
		public UserEntity findUser(UserEntity user) {
			try{
			user.setPassword(UserUtil.MD5(user.getPassword()));
			List<UserEntity> exsitUser=userDao.findUser(user);
			if(exsitUser!=null && exsitUser.size()>0){
				return exsitUser.get(0);
			}else{
				return null;
			}
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
			}
		public String getCountSize(String username) {
			String countSize = null;
			try{
				countSize = userDao.getCountSize(username);
			}catch (Exception e){
				e.printStackTrace();
				return countSize;
			}
			return countSize;
	}
}

