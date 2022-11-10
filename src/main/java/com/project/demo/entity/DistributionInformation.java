package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 配送信息
 * @TableName distribution_information
 */
@TableName(value ="distribution_information")
@Data
public class DistributionInformation implements Serializable {
    /**
     * 配送信息ID
     */
    @TableId(type = IdType.AUTO)
    private Integer distributionInformationId;

    /**
     * 订单编号
     */
    private String orderNumber;

    /**
     * 用户姓名
     */
    private String userName;

    /**
     * 购买用户
     */
    private Integer purchaseUser;

    /**
     * 商品名称
     */
    private String tradeName;

    /**
     * 物流公司
     */
    private String logisticsCompany;

    /**
     * 发货状态
     */
    private String shipmentStatus;

    /**
     * 签收状态
     */
    private String signInStatus;

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