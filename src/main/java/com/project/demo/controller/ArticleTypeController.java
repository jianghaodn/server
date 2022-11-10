package com.project.demo.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.project.demo.entity.ArticleType;
import com.project.demo.service.ArticleTypeService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * 文章频道：用于汇总浏览文章，在不同频道下展示不同文章。(ArticleType)表控制层
 *
 * @author makejava
 * @since 2022-11-10 10:41:00
 */
@RestController
@RequestMapping("articleType")
public class ArticleTypeController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private ArticleTypeService articleTypeService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param articleType 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<ArticleType> page, ArticleType articleType) {
        return success(this.articleTypeService.page(page, new QueryWrapper<>(articleType)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.articleTypeService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param articleType 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody ArticleType articleType) {
        return success(this.articleTypeService.save(articleType));
    }

    /**
     * 修改数据
     *
     * @param articleType 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody ArticleType articleType) {
        return success(this.articleTypeService.updateById(articleType));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.articleTypeService.removeByIds(idList));
    }
}

