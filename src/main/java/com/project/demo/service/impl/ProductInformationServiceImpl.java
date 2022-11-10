package com.project.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.project.demo.entity.ProductInformation;
import com.project.demo.service.ProductInformationService;
import com.project.demo.mapper.ProductInformationMapper;
import org.springframework.stereotype.Service;

/**
 *
 */
@Service
public class ProductInformationServiceImpl extends ServiceImpl<ProductInformationMapper, ProductInformation>
    implements ProductInformationService{

}




