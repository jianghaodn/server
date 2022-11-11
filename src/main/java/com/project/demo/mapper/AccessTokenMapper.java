package com.project.demo.mapper;

import com.project.demo.entity.AccessToken;

import org.apache.ibatis.annotations.Select;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * @Entity com.project.demo.entity.AccessToken
 */
public interface AccessTokenMapper extends BaseMapper<AccessToken> {

    @Select("select * from user where is=#{id}")
    public void select(Integer id);

}
