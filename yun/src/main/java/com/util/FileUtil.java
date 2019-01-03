package com.util;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * Created by Administrator.
 */
public class FileUtil {
    /*
* 文件大小 B-->KB MB GB格式化显示
* @param size
* return
*/
    public static String getDataSize(long size) {
        DecimalFormat formater = new DecimalFormat("####.0");
        if (size < 1024){
            return size + "B";
        }else if (size < 1024 * 1024){
            float kbsize = size / 1024f;
            return formater.format(kbsize) + "KB";
        }else if (size < 1024 * 1024 * 1024){
            float mbsize = size / 1024f / 1024f;
            return formater.format(mbsize) + "MB";
        }else if (size < 1024 * 1024 * 1024 *1024){
            float gbsize = size / 1024f /1024f / 1024f;
            return formater.format(gbsize) + "GB";
        }else{
            return "-";
        }
    }

    public static String formatTime(long time) {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date(time));
    }
    public static String getUrl8(){

        return UUID.randomUUID().toString().replace("-","").substring(0,8);
    }

}
