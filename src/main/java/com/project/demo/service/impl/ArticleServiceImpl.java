package com.project.demo.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.project.demo.dao.ArticleDao;
import com.project.demo.entity.Article;
import com.project.demo.service.ArticleService;
import org.springframework.stereotype.Service;

/**
 * 文章：用于内容管理系统的文章(Article)表服务实现类
 *
 * @author makejava
 * @since 2022-11-10 10:11:12
 */
@Service("articleService")
public class ArticleServiceImpl extends ServiceImpl<ArticleDao, Article> implements ArticleService {

}

