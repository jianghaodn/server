package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 *商品信息：(ProductInformation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ProductInformation")
public class ProductInformation implements Serializable {

    //ProductInformation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "product_information_id")
    private Integer product_information_id;
   // 商品名称
   @Basic
    private String trade_name;
   // 商品封面
   @Basic
    private String product_cover;
   // 商品价钱
   @Basic
    private String commodity_price_;
   // 商品库存
   @Basic
    private String merchandise_inventory;
   // 商品类型
   @Basic
    private String commodity_type;
   // 商品描述
   @Basic
    private String product_description;
   // 商品介绍
   @Basic
    private String product_introduction;
    // 点击数
    @Basic
    private Integer hits;
    // 点赞数
    @Basic
    private Integer praise_len;

    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
