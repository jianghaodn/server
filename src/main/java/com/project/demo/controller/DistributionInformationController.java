package com.project.demo.controller;

import com.project.demo.entity.DistributionInformation;
import com.project.demo.service1.DistributionInformationService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Map;


/**
 *配送信息：(DistributionInformation)表控制层
 *
 */
@RestController
@RequestMapping("/distribution_information")
public class DistributionInformationController extends BaseController<DistributionInformation,DistributionInformationService> {

    /**
     *配送信息对象
     */
    @Autowired
    public DistributionInformationController(DistributionInformationService service) {
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
