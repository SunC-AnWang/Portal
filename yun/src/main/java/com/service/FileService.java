package com.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipOutputStream;

import javax.servlet.http.HttpServletRequest;

import com.dao.UserDao;
import com.dao.officeDao;
import com.util.FileUtil;
import com.util.UserUtil;
import org.springframework.stereotype.Service;

import com.entity.UserEntity;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileService {
	private UserDao userDao;
	//文件相对前缀
	public static final String PREFIX = "WEB-INF" + File.separator + "file" + File.separator;
	//指定路径：D:\tmp\images,需注意的是在D盘下该文件夹已存在，否则后面的创建文件夹操作失败
	public static final String PREFIXc = "E:/tmp/images/";
	//新用户注册默认文件夹
	public static final String[] DEFAULT_DIRECTORY = {"video", "music", "source", "image", UserEntity.RECYCLE};

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
	/*
	* 获取文件路径+名称：使用project/WEB-INF/file目录
	* @param request
	* @param fileName
	* @return
	*/

	public String getFileName(HttpServletRequest request, String fileName) {
		if (fileName == null) {
			fileName = "";
		}
		String username = UserUtil.getUsername(request);
		return getRootPath(request) + username + File.separator + fileName;
	}

	/*
        * 获取文件路径+名称，使用自定义目录
        * @param request
        * @param fileName
        * @return
        */
	public String getFileNameC(HttpServletRequest request, String fileName) {
		if (fileName == null) {
			fileName = "";
		}
		String username = UserUtil.getUsername(request);
		return PREFIXc + username + File.separator + fileName;
	}

	public List<FileCustom> listFile(String realPath) {
		File[] files = new File(realPath).listFiles();
		List<FileCustom> lists = new ArrayList<FileCustom>();
		if (files != null) {
			for (File file : files) {
				if (!file.getName().equals(UserEntity.RECYCLE)) {
					FileCustom custom = new FileCustom();
					custom.setFileName(file.getName());
					custom.setLastTime(FileUtil.formatTime(file.lastModified()));
					custom.setCurrentPath(realPath);
					if (file.isDirectory()) {
						custom.setFileSize("-");
					} else {
						//文件大小格式化
						custom.setFileSize(FileUtil.getDataSize(file.length()));
					}
					custom.setFileType(FileUtil.getFileType(file));
					lists.add(custom);
				}
			}
		}
		return lists;
	}

	/*
	* 上传文件
	* @param request
	* @param files 文件
	* @param currentPath 当前路径
	* @throws Exception
	*/
	public officeDao officeDao;
	public void uploadFilePath(HttpServletRequest request, MultipartFile[] files, String currentPath) throws Exception {
		for (MultipartFile file : files) {
			//获取上传文件名
			String fileName = file.getOriginalFilename();
			//使用上传到服务器的路径
			String filePath = getFileName(request, currentPath);
			//此时distFile
			File distFile = new File(filePath, fileName);
			//如果文件不存在
			if (!distFile.exists()){
				//使用springmvc封装的方法transferTo，将文件复制的目标路径下
			file.transferTo(distFile);
				}
		}
		//重新计算user表countSize字段
		reSize(request);
	}

	public void reSize(HttpServletRequest request) {
		String userName = UserUtil.getUsername(request);
		try {
			userDao.reSize(userName, countFileSize(request));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/*
	* 统计用户文件大小
	*
	* @param request
	* @return
	* */
	public String countFileSize(HttpServletRequest request) {
		//递归统计用户文件大小
		long countFileSize = countFileSize(new File(getFileName(request, null)));
		return FileUtil.getDataSize(countFileSize);
	}

	/*
	* 递归统计用户文件大小
	* @param srcFile 位置
	* @return
	* */
	private long countFileSize(File srcFile) {
		File[] listFiles = srcFile.listFiles();
		if (listFiles == null) {
			return 0;
		}
		long count = 0;
		for (File file : listFiles) {
			if (file.isDirectory()) {
				count += countFileSize(file);
			} else {
				count += file.length();
			}
		}
		return count;
	}

	/**
	 * 下载文件:下载压缩包
	 *
	 * @param request
	 * @param currentPath 当前路径
	 * @param fileNames   文件名
	 * @param username    用户名
	 * @return downloadFile 打包的文件对象
	 * @throws Exception
	 */
	public File downPackage(HttpServletRequest request, String currentPath, String[] fileNames, String username)
			throws Exception {
		File downloadFile = null;
		if (currentPath == null) {
			currentPath = "";
		}
		//下载单个文件
		if (fileNames.length == 1) {
			downloadFile = new File(getFileName(request, currentPath), fileNames[0]);
			if (downloadFile.isFile()) {
				return downloadFile;
			}
		}
		//下载多个文件 打包1
		String[] sourcePath = new String[fileNames.length];
		for (int i = 0; i < fileNames.length; i++) {
			sourcePath[i] = getFileNameC(request, currentPath) + File.separator + fileNames[i];
		}
		String packageZipName = packageZip(sourcePath);
		downloadFile = new File(packageZipName);
		return downloadFile;
	}

	/**
	 * 压缩文件
	 *
	 * @param sourcePath
	 * @return
	 * @throws Exception
	 */
	private String packageZip(String[] sourcePath) throws Exception {
		String zipName = sourcePath[0] + (sourcePath.length == 1 ? "" : "等" + sourcePath.length + "个文件") + ".zip";
		ZipOutputStream zos = null;
		try {
			zos = new ZipOutputStream(new FileOutputStream(zipName));
			for (String string : sourcePath) {
				writeZos(new File(string), "", zos);
			}
		} finally {
			if (zos != null) {
				zos.close();
			}
		}
		return zipName;
	}

	private void writeZos(File file, String s, ZipOutputStream zos) {
	}

	/*
    * 删除压缩文件包
    * @param downloadFile
    * */
	public void deleteDownPackage(File downloadFile) {
		if (downloadFile.getName().endsWith(".zip")) {
			downloadFile.delete();
		}
	}

	/*
	* 查找用户空间大小
	* @param username
	* @return
	*/
	public String getCountSize(String username) {
		String countSize = null;
		try {
			countSize = userDao.getCountSize(username);
		} catch (Exception e) {
			e.printStackTrace();

		}
		return countSize;
	}
}

