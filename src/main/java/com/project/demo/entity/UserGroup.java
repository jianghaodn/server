package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 用户组：用于用户前端身份和鉴权
 * @TableName user_group
 */
@TableName(value ="user_group")
@Data
public class UserGroup implements Serializable {
    /**
     * 用户组ID：[0,8388607]
     */
    @TableId(type = IdType.AUTO)
    private Integer groupId;

    /**
     * 显示顺序：[0,1000]
     */
    private Short display;

    /**
     * 名称：[0,16]
     */
    private String name;

    /**
     * 描述：[0,255]描述该用户组的特点或权限范围
     */
    private String description;

    /**
     * 来源表：
     */
    private String sourceTable;

    /**
     * 来源字段：
     */
    private String sourceField;

    /**
     * 来源ID：
     */
    private Integer sourceId;

    /**
     * 注册位置:
     */
    private Short register;

    /**
     * 创建时间：
     */
    private Date createTime;

    /**
     * 更新时间：
     */
    private Date updateTime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}