/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.qdu.dao;

import java.io.Serializable;
import java.util.List;
   

public interface  BaseDao<T> {
    
    void insert(T t);
    void update(T t);
    void delete(Serializable id); //根据主键值删除
    
    
    T getOneById(Serializable id); //根据主键值查询单个对象
    /**
     * getListByQuery(),根据一个hql查询获取一个结果列表
     * 
     * @param hql 一个hql查询语句,要执行的查询
     * @param params 可变参数,也就是查询需要的参数
     * @return 
     */
    //...在java中表示可变数量的参数,也叫做可变参数,可传入任意数量的参数
    List<T> getListByQuery(String hql,Object... params); //根据HQL查询获取一个要查询的列表
    
    //getListByQuery("from Course");
    //getListByQuery("from Course where courseId=?","C001");
    //getListByQuery("from Course where courseId=? or courseName=?","C001","英语");
    
    //String类,封装器类等都是实现了Serializable接口
    
    
}
