package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *配送信息：(DistributionInformation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "DistributionInformation")
public class DistributionInformation implements Serializable {

    //DistributionInformation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "distribution_information_id")
    private Integer distribution_information_id;
   // 订单编号
   @Basic
    private String order_number;
   // 用户姓名
   @Basic
    private String user_name;
   // 购买用户
   @Basic
    private Integer purchase_user;
   // 商品名称
   @Basic
    private String trade_name;
   // 物流公司
   @Basic
    private String logistics_company;
   // 发货状态
   @Basic
    private String shipment_status;
   // 签收状态
   @Basic
    private String sign_in_status;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
