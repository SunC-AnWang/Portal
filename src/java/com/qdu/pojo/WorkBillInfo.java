package com.qdu.pojo;
 




/**
 * WorkBillInfo generated by hbm2java
 */
public class WorkBillInfo  implements java.io.Serializable {


     private int wid;
     private int nid;
     private String saff;

    public WorkBillInfo() {
    }

    public WorkBillInfo(int wid, int nid, String saff) {
       this.wid = wid;
       this.nid = nid;
       this.saff = saff;
    }
   
    public int getWid() {
        return this.wid;
    }
    
    public void setWid(int wid) {
        this.wid = wid;
    }
    public int getNid() {
        return this.nid;
    }
    
    public void setNid(int nid) {
        this.nid = nid;
    }
    public String getSaff() {
        return this.saff;
    }
    
    public void setSaff(String saff) {
        this.saff = saff;
    }




}


