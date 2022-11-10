package com.project.demo.controller;

import com.project.demo.entity.ReturnInformation;
import com.project.demo.service1.ReturnInformationService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;


/**
 *退货信息：(ReturnInformation)表控制层
 *
 */
@RestController
@RequestMapping("/return_information")
public class ReturnInformationController extends BaseController<ReturnInformation,ReturnInformationService> {

    /**
     *退货信息对象
     */
    @Autowired
    public ReturnInformationController(ReturnInformationService service) {
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
