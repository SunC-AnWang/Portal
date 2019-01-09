
package com.qdu.dao.impl;

import com.qdu.dao.BaseDao;
import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
   
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author zk
 * @param <T>
 */
//Repository
public class BaseDaoImpl<T> implements BaseDao<T>{
    
     Class<T> clazz; //用一个变量保存T的class 
    
    //可考虑在BaseDaoImpl的构造函数中,获取到T的class
    public BaseDaoImpl(){
        //ParameterizedType来自java.lang.reflect包
        //这两行代码用于获取T对应的class,如如果T表示Course，则获取到的是Course.class
        ParameterizedType type=(ParameterizedType)this.getClass().getGenericSuperclass();
        clazz=(Class<T>)type.getActualTypeArguments()[0];
    }
    
    @Autowired
    private SessionFactory sessionFactory;

    
    
    @Override
    public void insert(T t) {
        sessionFactory.getCurrentSession().save(t);
    }

    @Override
    public void update(T t) {
        sessionFactory.getCurrentSession().update(t);
    }

    @Override
    public void delete(Serializable id) {
        
        T target=getOneById(id); //先根据主键值获取要删除的对象
        sessionFactory.getCurrentSession().delete(target); //然后将对象删除
    }

    @Override
    public T getOneById(Serializable id) {
        return (T)sessionFactory.getCurrentSession().get(clazz, id);
    }

    @Override
    public List<T> getListByQuery(String hql, Object... params) {
        
        Query query=sessionFactory.getCurrentSession().createQuery(hql);
        //设置查询参数,params最后以数组接受多个参数,params就相当于一个数组
        for(int i=0;i<params.length;i++){
            query.setParameter(i,params[i]); 
            //设置参数值,给出参数索引和参数值,索引从0开始
            //i从0开始遍历,刚好表示参数的索引
            //params[i]表示当前参数的值
        }
        return query.list(); //执行查询,返回结果集合
    }
    }
    


