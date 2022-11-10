package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 文章频道：用于汇总浏览文章，在不同频道下展示不同文章。
 * @TableName article_type
 */
@TableName(value ="article_type")
@Data
public class ArticleType implements Serializable {
    /**
     * 分类ID：[0,10000]
     */
    @TableId(type = IdType.AUTO)
    private Short typeId;

    /**
     * 显示顺序：[0,1000]决定分类显示的先后顺序
     */
    private Short display;

    /**
     * 分类名称：[2,16]
     */
    private String name;

    /**
     * 上级分类ID：[0,32767]
     */
    private Short fatherId;

    /**
     * 描述：[0,255]描述该分类的作用
     */
    private String description;

    /**
     * 分类图标：
     */
    private String icon;

    /**
     * 外链地址：[0,255]如果该分类是跳转到其他网站的情况下，就在该URL上设置
     */
    private String url;

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