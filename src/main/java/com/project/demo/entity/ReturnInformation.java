package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *退货信息：(ReturnInformation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ReturnInformation")
public class ReturnInformation implements Serializable {

    //ReturnInformation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "return_information_id")
    private Integer return_information_id;
   // 订单编号
   @Basic
    private String order_number;
   // 购买用户
   @Basic
    private Integer purchase_user;
   // 用户姓名
   @Basic
    private String user_name;
   // 商品名称
   @Basic
    private String trade_name;
   // 总计
   @Basic
    private String total;
   // 退货申请
   @Basic
    private String return_request_;
   // 收款账号
   @Basic
    private String collection_account_number;
    // 审核状态
    @Basic
    private String examine_state;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
