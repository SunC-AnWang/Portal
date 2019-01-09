/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.util;
   
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class MD5Utils {
    

    public static String md5(String text){
        byte[] secretBytes=null;
        try {
            secretBytes=MessageDigest.getInstance("md5").digest(text.getBytes());
        } catch (NoSuchAlgorithmException ex) {
            Logger.getLogger(MD5Utils.class.getName()).log(Level.SEVERE, null, ex);
        }
        String md5Code=new BigInteger(1,secretBytes).toString(16);
        for(int i=0;i<32-md5Code.length();i++){
            md5Code="0"+md5Code;
        }
        return md5Code;
    }

}
    
     
