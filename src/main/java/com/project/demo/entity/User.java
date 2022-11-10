package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 用户账户：用于保存用户登录信息
 * @TableName user
 */
@TableName(value ="user")
@Data
public class User implements Serializable {
    /**
     * 用户ID：[0,8388607]用户获取其他与用户相关的数据
     */
    @TableId(type = IdType.AUTO)
    private Integer userId;

    /**
     * 账户状态：[0,10](1可用|2异常|3已冻结|4已注销)
     */
    private Short state;

    /**
     * 所在用户组：[0,32767]决定用户身份和权限
     */
    private String userGroup;

    /**
     * 上次登录时间：
     */
    private Date loginTime;

    /**
     * 手机号码：[0,11]用户的手机号码，用于找回密码时或登录时
     */
    private String phone;

    /**
     * 手机认证：[0,1](0未认证|1审核中|2已认证)
     */
    private Short phoneState;

    /**
     * 用户名：[0,16]用户登录时所用的账户名称
     */
    private String username;

    /**
     * 昵称：[0,16]
     */
    private String nickname;

    /**
     * 密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成
     */
    private String password;

    /**
     * 邮箱：[0,64]用户的邮箱，用于找回密码时或登录时
     */
    private String email;

    /**
     * 邮箱认证：[0,1](0未认证|1审核中|2已认证)
     */
    private Short emailState;

    /**
     * 头像地址：[0,255]
     */
    private String avatar;

    /**
     * 创建时间：
     */
    private Date createTime;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}