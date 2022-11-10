package com.project.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.project.demo.entity.Article;
import com.project.demo.service.ArticleService;
import com.project.demo.mapper.ArticleMapper;
import org.springframework.stereotype.Service;

/**
 *
 */
@Service
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article>
    implements ArticleService{

}




