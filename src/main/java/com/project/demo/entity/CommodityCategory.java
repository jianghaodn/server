package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 商品类别
 * @TableName commodity_category
 */
@TableName(value ="commodity_category")
@Data
public class CommodityCategory implements Serializable {
    /**
     * 商品类别ID
     */
    @TableId(type = IdType.AUTO)
    private Integer commodityCategoryId;

    /**
     * 商品类型
     */
    private String commodityType;

    /**
     * 智能推荐
     */
    private Integer recommend;

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