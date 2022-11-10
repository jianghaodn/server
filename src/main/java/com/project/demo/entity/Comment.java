package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 评论：
 * @TableName comment
 */
@TableName(value ="comment")
@Data
public class Comment implements Serializable {
    /**
     * 评论ID：
     */
    @TableId(type = IdType.AUTO)
    private Integer commentId;

    /**
     * 评论人ID：
     */
    private Integer userId;

    /**
     * 回复评论ID：空为0
     */
    private Integer replyToId;

    /**
     * 内容：
     */
    private String content;

    /**
     * 昵称：
     */
    private String nickname;

    /**
     * 头像地址：[0,255]
     */
    private String avatar;

    /**
     * 创建时间：
     */
    private Date createTime;

    /**
     * 更新时间：
     */
    private Date updateTime;

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

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}