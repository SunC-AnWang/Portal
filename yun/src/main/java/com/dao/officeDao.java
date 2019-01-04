package com.dao;

import org.apache.ibatis.annotations.Param;


public interface officeDao {
    void addOffice(@Param("officeId") String officeId, @Param("officeMd5") String officeMd5) throws Exception;
}
