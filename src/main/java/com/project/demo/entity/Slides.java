package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 轮播图：
 * @TableName slides
 */
@TableName(value ="slides")
@Data
public class Slides implements Serializable {
    /**
     * 轮播图ID：
     */
    @TableId(type = IdType.AUTO)
    private Integer slidesId;

    /**
     * 标题：
     */
    private String title;

    /**
     * 内容：
     */
    private String content;

    /**
     * 链接：
     */
    private String url;

    /**
     * 轮播图：
     */
    private String img;

    /**
     * 点击量：
     */
    private Integer hits;

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