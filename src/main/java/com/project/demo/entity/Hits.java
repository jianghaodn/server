package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 
 * @TableName hits
 */
@TableName(value ="hits")
@Data
public class Hits implements Serializable {
    /**
     * 点赞ID：
     */
    @TableId(type = IdType.AUTO)
    private Integer hitsId;

    /**
     * 点赞人：
     */
    private Integer userId;

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