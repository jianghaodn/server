package com.project.demo.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.project.demo.entity.ReturnInformation;
import com.project.demo.service.ReturnInformationService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * 退货信息(ReturnInformation)表控制层
 *
 * @author makejava
 * @since 2022-11-10 10:41:00
 */
@RestController
@RequestMapping("returnInformation")
public class ReturnInformationController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private ReturnInformationService returnInformationService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param returnInformation 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<ReturnInformation> page, ReturnInformation returnInformation) {
        return success(this.returnInformationService.page(page, new QueryWrapper<>(returnInformation)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.returnInformationService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param returnInformation 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody ReturnInformation returnInformation) {
        return success(this.returnInformationService.save(returnInformation));
    }

    /**
     * 修改数据
     *
     * @param returnInformation 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody ReturnInformation returnInformation) {
        return success(this.returnInformationService.updateById(returnInformation));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.returnInformationService.removeByIds(idList));
    }
}

