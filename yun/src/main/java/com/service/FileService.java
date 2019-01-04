package com.service;

import java.io.File;

import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Service;

import com.entity.UserEntity;


@Service
public class FileService {
	//文件相对前缀
	public static final String PREFIX = "WEB-INF" + File.separator + "file" + File.separator;
	//指定路径：D:\tmp\images,需注意的是在D盘下该文件夹已存在，否则后面的创建文件夹操作失败
	public static final String PREFIXc = "D:/tmp/images";
	//新用户注册默认文件夹
	public static final String[] DEFAULT_DIRECTORY = { "vido", "music", "source", "image", UserEntity.RECYCLE };
	
	public void addNewNameSpace(HttpServletRequest request, String namespace) {
		//D:\java64\apache-tomcat-8.5.16\wtpwebapps\project name
		//String fileName = getRootPath(request);
		//使用指定文件夹
		String fileName = PREFIXc;
		File file = new File(fileName, namespace);
		boolean ifSuc = file.mkdir();
		for (String newFileName : DEFAULT_DIRECTORY) {
			File newFile = new File(file, newFileName);
			newFile.mkdir();
		}
	}
	/**
	 * 获取文件根路径
	 * 
	 * @param request
	 * @return
	 */
	public String getRootPath(HttpServletRequest request) {
		String rootPath = request.getSession().getServletContext().getRealPath("/") + PREFIX;
		return rootPath;
	}
}
