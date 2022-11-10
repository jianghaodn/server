package com.project.demo.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.project.demo.entity.OrdinaryUsers;
import com.project.demo.service.OrdinaryUsersService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * 普通用户(OrdinaryUsers)表控制层
 *
 * @author makejava
 * @since 2022-11-10 10:41:00
 */
@RestController
@RequestMapping("ordinaryUsers")
public class OrdinaryUsersController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private OrdinaryUsersService ordinaryUsersService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param ordinaryUsers 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<OrdinaryUsers> page, OrdinaryUsers ordinaryUsers) {
        return success(this.ordinaryUsersService.page(page, new QueryWrapper<>(ordinaryUsers)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.ordinaryUsersService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param ordinaryUsers 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody OrdinaryUsers ordinaryUsers) {
        return success(this.ordinaryUsersService.save(ordinaryUsers));
    }

    /**
     * 修改数据
     *
     * @param ordinaryUsers 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody OrdinaryUsers ordinaryUsers) {
        return success(this.ordinaryUsersService.updateById(ordinaryUsers));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.ordinaryUsersService.removeByIds(idList));
    }
}

