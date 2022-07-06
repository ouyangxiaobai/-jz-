package com.ian.media.dao;


import com.ian.media.model.renyuan;
import com.ian.media.model.dingdan;


public interface renyuanMapper extends BaseDao<renyuan, String> {
	/*
    int countByExample(renyuanExample example);

    int deleteByExample(renyuanExample example);

    int insert(renyuan record);

    int insertSelective(renyuan record);

    List<renyuan> selectByExampleWithBLOBs(renyuanExample example);

    List<renyuan> selectByExample(renyuanExample example);

    //int updateByExampleSelective(@Param("record") renyuan record, @Param("example") renyuanExample example);

    int updateByExampleWithBLOBs(@Param("record") renyuan record, @Param("example") renyuanExample example);

    int updateByExample(@Param("record") renyuan record, @Param("example") renyuanExample example);
*/
	public int insertdingdan(dingdan paramT);

}