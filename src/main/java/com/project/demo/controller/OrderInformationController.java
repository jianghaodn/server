package com.project.demo.controller;

import com.project.demo.entity.OrderInformation;
import com.project.demo.service1.OrderInformationService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;


/**
 *订单信息：(OrderInformation)表控制层
 *
 */
@RestController
@RequestMapping("/order_information")
public class OrderInformationController extends BaseController<OrderInformation,OrderInformationService> {

    /**
     *订单信息对象
     */
    @Autowired
    public OrderInformationController(OrderInformationService service) {
        setService(service);
    }

    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        String sql = "SELECT MAX(order_information_id) AS max FROM "+"order_information";
        Query select = service.runCountSql(sql);
        Integer max = (Integer) select.getSingleResult();
        sql = ("SELECT count(*) count FROM `product_information` INNER JOIN `order_information` ON product_information.trade_name=order_information.trade_name WHERE product_information.merchandise_inventory &#60; order_information.purchase_quantity AND order_information.order_information_id="+max).replaceAll("&#60;","<");
        select = service.runCountSql(sql);
        Integer count = Integer.valueOf(String.valueOf(select.getSingleResult()));
        if(count>0){
            sql = "delete from "+"order_information"+" WHERE "+"order_information_id"+" ="+max;
            select = service.runCountSql(sql);
            select.executeUpdate();
            return error(30000,"库存不足!");
        }
        sql = "UPDATE `product_information` INNER JOIN `order_information` ON product_information.trade_name=order_information.trade_name SET product_information.merchandise_inventory = product_information.merchandise_inventory - order_information.purchase_quantity WHERE order_information.order_information_id="+max;
        select = service.runCountSql(sql);
        select.executeUpdate();
        return success(1);
    }

}
