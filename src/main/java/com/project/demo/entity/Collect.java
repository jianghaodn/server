package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 收藏：
 * @TableName collect
 */
@TableName(value ="collect")
@Data
public class Collect implements Serializable {
    /**
     * 收藏ID：
     */
    @TableId(type = IdType.AUTO)
    private Integer collectId;

    /**
     * 收藏人ID：
     */
    private Integer userId;

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
     * 标题：
     */
    private String title;

    /**
     * 封面：
     */
    private String img;

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