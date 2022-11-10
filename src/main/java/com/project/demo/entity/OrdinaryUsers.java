package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 普通用户
 * @TableName ordinary_users
 */
@TableName(value ="ordinary_users")
@Data
public class OrdinaryUsers implements Serializable {
    /**
     * 普通用户ID
     */
    @TableId(type = IdType.AUTO)
    private Integer ordinaryUsersId;

    /**
     * 用户姓名
     */
    private String userName;

    /**
     * 用户性别
     */
    private String userGender;

    /**
     * 用户电话
     */
    private String subscriberTelephone;

    /**
     * 用户地址
     */
    private String userAddress;

    /**
     * 审核状态
     */
    private String examineState;

    /**
     * 智能推荐
     */
    private Integer recommend;

    /**
     * 用户ID
     */
    private Integer userId;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}