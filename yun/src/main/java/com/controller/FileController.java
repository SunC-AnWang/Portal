package com.controller;

import com.service.FileCustom;
import com.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

import java.io.File;
import java.util.List;

@Controller
@RequestMapping("/file")
public class FileController {
    @Autowired
    private HttpServletRequest request;
    @Autowired
    private FileService fileService;
    /*
    * 文件下载：如果用户同时下载多个文件，需先临时打成压缩包，下载压缩包，下载成功后，再删除该压缩包
    *@param currentPath 当前路径
    *@param downPath 文件名
    *@param username 用户名
    *@return 文件下载流
    */
    @RequestMapping("/download")
    //利用springmvc提供的ResponseEntity类型,使用它可以很方便地定义返回的HttpHeaders和HttpStatus。
    public ResponseEntity<byte[]> download(String currentPath,String[] downPath,String username){
        try{
            //获取文件下载名
            String down = request.getParameter("downPath");
            //下载压缩包
            File downloadFile = fileService.downPackage(request,currentPath,downPath,username);
            //请求头
            HttpHeaders headers = new HttpHeaders();
            //application/octet-stream二进制流数据（最常见的文件下载）。
            headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
            String fineName = new String(downloadFile.getName().getBytes("utf-8"),"iso-8859-1");
            //通知浏览器以attachment（下载方式）打开图片
            headers.setContentDispositionFormData("attachment",fineName);
            byte[] fileToByteArray = org.apache.commons.io.FileUtils.readFileToByteArray(downloadFile);
            //删除该压缩包
            fileService.deleteDownPackage(downloadFile);
            return new ResponseEntity<byte[]>(fileToByteArray,headers, HttpStatus.CREATED);
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    @RequestMapping("/getFiles")
    @ResponseBody
    public Result<List<FileCustom>>getFiles(HttpServletRequest request, String path) {
        //获取文件 路径+名称
        String realPath = fileService.getFileName(request, path);
        //获取用户的文件夹
        List<FileCustom> listFile = fileService.listFile(realPath);
        //生成result对象
        Result<List<FileCustom>> result = new Result<List<FileCustom>>(325, true, "获取成功");
        //将获取到的文件列表放入，并返回
        result.setData(listFile);
        return result;
    }
    @RequestMapping("/upload")
    public @ResponseBody Result<String> upload(
            @RequestParam("files")MultipartFile[] files, String currentPath){
        try{
            //调用fileService中的uploadFilePath方法进行上传
            fileService.uploadFilePath(request, files,currentPath);
        }catch(Exception e){
            return new Result<String>(301,false,"上传失败");
        }
        return new Result<String>(305,true,"上传成功");
    }
}
