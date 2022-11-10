package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * 退货信息
 * @TableName return_information
 */
@TableName(value ="return_information")
@Data
public class ReturnInformation implements Serializable {
    /**
     * 退货信息ID
     */
    @TableId(type = IdType.AUTO)
    private Integer returnInformationId;

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
     * 商品名称
     */
    private String tradeName;

    /**
     * 总计
     */
    private String total;

    /**
     * 退货申请
     */
    private String returnRequest;

    /**
     * 收款账号
     */
    private String collectionAccountNumber;

    /**
     * 审核状态
     */
    private String examineState;

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