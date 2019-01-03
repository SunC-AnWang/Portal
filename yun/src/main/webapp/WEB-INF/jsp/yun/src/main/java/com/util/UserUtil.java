package com.util;

import com.entity.UserEntity;
import org.springframework.util.DigestUtils;

import javax.servlet.http.HttpServletRequest;

public class UserUtil {
	
	/**
	 * MD5加密封装
	 * @param password
	 * @return
	 */
	public static String MD5(String password){
		if(password!=null){
		return DigestUtils.md5DigestAsHex(password.getBytes()).toUpperCase();
		}else{
			return null;
		}
	}

	public static String getUsername(HttpServletRequest request) {

		String username = (String) request.getSession().getAttribute(UserEntity.NAMESPACE);
		return username;
	}
}

