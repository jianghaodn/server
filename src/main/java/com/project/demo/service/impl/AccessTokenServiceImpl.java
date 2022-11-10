package com.project.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.project.demo.entity.AccessToken;
import com.project.demo.service.AccessTokenService;
import com.project.demo.mapper.AccessTokenMapper;
import org.springframework.stereotype.Service;

/**
 *
 */
@Service
public class AccessTokenServiceImpl extends ServiceImpl<AccessTokenMapper, AccessToken>
    implements AccessTokenService{

}




