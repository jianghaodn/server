package com.project.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.project.demo.entity.Hits;
import com.project.demo.service.HitsService;
import com.project.demo.mapper.HitsMapper;
import org.springframework.stereotype.Service;

/**
 *
 */
@Service
public class HitsServiceImpl extends ServiceImpl<HitsMapper, Hits>
    implements HitsService{

}




