package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

/**
 * 临时访问牌
 * 
 * @TableName access_token
 */
@TableName(value = "access_token")
@Data
public class AccessToken implements Serializable {
    /**
     * 临时访问牌ID
     */
    @TableId(type = IdType.AUTO)
    private Integer tokenId;

    /**
     * 临时访问牌
     */
    private String token;

    /**
     * 
     */
    private String info;

    /**
     * 最大寿命：默认2小时
     */
    private Integer maxage;

    /**
     * 创建时间：
     */
    private Date createTime;

    /**
     * 更新时间：
     */
    private Date updateTime;

    /**
     * 用户编号:
     */
    private Integer userId;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}