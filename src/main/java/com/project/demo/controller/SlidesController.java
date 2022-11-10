package com.project.demo.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.project.demo.entity.Slides;
import com.project.demo.service.SlidesService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * 轮播图：(Slides)表控制层
 *
 * @author makejava
 * @since 2022-11-10 10:41:00
 */
@RestController
@RequestMapping("slides")
public class SlidesController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private SlidesService slidesService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param slides 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<Slides> page, Slides slides) {
        return success(this.slidesService.page(page, new QueryWrapper<>(slides)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.slidesService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param slides 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody Slides slides) {
        return success(this.slidesService.save(slides));
    }

    /**
     * 修改数据
     *
     * @param slides 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody Slides slides) {
        return success(this.slidesService.updateById(slides));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.slidesService.removeByIds(idList));
    }
}

