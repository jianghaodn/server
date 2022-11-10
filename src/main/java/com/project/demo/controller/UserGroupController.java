package com.project.demo.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.project.demo.entity.UserGroup;
import com.project.demo.service.UserGroupService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * 用户组：用于用户前端身份和鉴权(UserGroup)表控制层
 *
 * @author makejava
 * @since 2022-11-10 10:41:00
 */
@RestController
@RequestMapping("userGroup")
public class UserGroupController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private UserGroupService userGroupService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param userGroup 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<UserGroup> page, UserGroup userGroup) {
        return success(this.userGroupService.page(page, new QueryWrapper<>(userGroup)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.userGroupService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param userGroup 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody UserGroup userGroup) {
        return success(this.userGroupService.save(userGroup));
    }

    /**
     * 修改数据
     *
     * @param userGroup 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody UserGroup userGroup) {
        return success(this.userGroupService.updateById(userGroup));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.userGroupService.removeByIds(idList));
    }
}

