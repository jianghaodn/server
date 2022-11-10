package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 商品信息
 * @TableName product_information
 */
@TableName(value ="product_information")
@Data
public class ProductInformation implements Serializable {
    /**
     * 商品信息ID
     */
    @TableId(type = IdType.AUTO)
    private Integer productInformationId;

    /**
     * 商品名称
     */
    private String tradeName;

    /**
     * 商品封面
     */
    private String productCover;

    /**
     * 商品价钱
     */
    private String commodityPrice;

    /**
     * 商品库存
     */
    private String merchandiseInventory;

    /**
     * 商品类型
     */
    private String commodityType;

    /**
     * 商品描述
     */
    private String productDescription;

    /**
     * 商品介绍
     */
    private String productIntroduction;

    /**
     * 点击数
     */
    private Integer hits;

    /**
     * 点赞数
     */
    private Integer praiseLen;

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