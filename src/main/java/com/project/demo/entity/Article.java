package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 文章：用于内容管理系统的文章
 * @TableName article
 */
@TableName(value ="article")
@Data
public class Article implements Serializable {
    /**
     * 文章id：[0,8388607]
     */
    @TableId(type = IdType.AUTO)
    private Integer articleId;

    /**
     * 标题：[0,125]用于文章和html的title标签中
     */
    @TableId
    private String title;

    /**
     * 文章分类：[0,1000]用来搜索指定类型的文章
     */
    private String type;

    /**
     * 点击数：[0,1000000000]访问这篇文章的人次
     */
    private Integer hits;

    /**
     * 点赞数
     */
    private Integer praiseLen;

    /**
     * 创建时间：
     */
    private Date createTime;

    /**
     * 更新时间：
     */
    private Date updateTime;

    /**
     * 来源：[0,255]文章的出处
     */
    private String source;

    /**
     * 来源地址：[0,255]用于跳转到发布该文章的网站
     */
    private String url;

    /**
     * 标签：[0,255]用于标注文章所属相关内容，多个标签用空格隔开
     */
    private String tag;

    /**
     * 正文：文章的主体内容
     */
    private String content;

    /**
     * 封面图
     */
    private String img;

    /**
     * 文章描述
     */
    private String description;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}