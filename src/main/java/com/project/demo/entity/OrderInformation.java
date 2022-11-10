package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 订单信息
 * @TableName order_information
 */
@TableName(value ="order_information")
@Data
public class OrderInformation implements Serializable {
    /**
     * 订单信息ID
     */
    @TableId(type = IdType.AUTO)
    private Integer orderInformationId;

    /**
     * 订单编号
     */
    private String orderNumber;

    /**
     * 购买用户
     */
    private Integer purchaseUser;

    /**
     * 用户姓名
     */
    private String userName;

    /**
     * 用户电话
     */
    private String subscriberTelephone;

    /**
     * 用户地址
     */
    private String userAddress;

    /**
     * 商品名称
     */
    private String tradeName;

    /**
     * 商品价钱
     */
    private String commodityPrice;

    /**
     * 购买数量
     */
    private String purchaseQuantity;

    /**
     * 总计
     */
    private String total;

    /**
     * 支付状态
     */
    private String payState;

    /**
     * 支付类型: 微信、支付宝、网银
     */
    private String payType;

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