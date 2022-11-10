package com.project.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.project.demo.entity.OrderInformation;
import com.project.demo.service.OrderInformationService;
import com.project.demo.mapper.OrderInformationMapper;
import org.springframework.stereotype.Service;

/**
 *
 */
@Service
public class OrderInformationServiceImpl extends ServiceImpl<OrderInformationMapper, OrderInformation>
    implements OrderInformationService{

}




