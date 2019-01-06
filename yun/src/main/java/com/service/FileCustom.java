package com.service;


public class FileCustom {
    private String fileName;
    private String fileType;
    private String fileSize;
    private String lastTime;
    private String filePath;
    private String currentPath;
    private String fileNameC;

    public FileCustom() {

    }

    public String getFileNameC() {
        return fileNameC;
    }

    public void setFileNameC(String fileNameC) {
        this.fileNameC = fileNameC;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getFileType() {
        return fileType;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public String getFileSize() {
        return fileSize;
    }

    public void setFileSize(String fileSize) {
        this.fileSize = fileSize;
    }

    public String getLastTime() {
        return lastTime;
    }

    public void setLastTime(String lastTime) {
        this.lastTime = lastTime;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) {
        this.filePath = filePath;
    }

    public String getCurrentPath() {
        return currentPath;
    }

    public void setCurrentPath(String currentPath) {
        this.currentPath = currentPath;
    }

    public FileCustom(String fileName, String fileType, String fileSize, String lastTime, String filePath, String currentPath) {
        this.fileName = fileName;
        this.fileType = fileType;
        this.fileSize = fileSize;
        this.lastTime = lastTime;
        this.filePath = filePath;
        this.currentPath = currentPath;
    }
}