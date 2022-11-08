package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *订单信息：(OrderInformation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "OrderInformation")
public class OrderInformation implements Serializable {

    //OrderInformation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "order_information_id")
    private Integer order_information_id;
   // 订单编号
   @Basic
    private String order_number;
   // 购买用户
   @Basic
    private Integer purchase_user;
   // 用户姓名
   @Basic
    private String user_name;
   // 用户电话
   @Basic
    private String subscriber_telephone;
   // 用户地址
   @Basic
    private String user_address;
   // 商品名称
   @Basic
    private String trade_name;
   // 商品价钱
   @Basic
    private String commodity_price_;
   // 购买数量
   @Basic
    private String purchase_quantity;
   // 总计
   @Basic
    private String total;
    // 支付状态
    @Basic
    private String pay_state;

    // 支付类型: 微信、支付宝、网银
    @Basic
    private String pay_type;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
