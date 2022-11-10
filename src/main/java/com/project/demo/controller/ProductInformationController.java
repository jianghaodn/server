package com.project.demo.controller;

import com.project.demo.entity.ProductInformation;
import com.project.demo.service1.ProductInformationService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;


/**
 *商品信息：(ProductInformation)表控制层
 *
 */
@RestController
@RequestMapping("/product_information")
public class ProductInformationController extends BaseController<ProductInformation,ProductInformationService> {

    /**
     *商品信息对象
     */
    @Autowired
    public ProductInformationController(ProductInformationService service) {
        setService(service);
    }

    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

}
