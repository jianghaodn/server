package com.project.demo.controller;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.project.demo.entity.AccessToken;
import com.project.demo.service.AccessTokenService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.io.Serializable;
import java.util.List;

/**
 * 临时访问牌(AccessToken)表控制层
 *
 * @author makejava
 * @since 2022-11-10 10:40:58
 */
@RestController
@RequestMapping("accessToken")
public class AccessTokenController extends ApiController {
    /**
     * 服务对象
     */
    @Resource
    private AccessTokenService accessTokenService;

    /**
     * 分页查询所有数据
     *
     * @param page 分页对象
     * @param accessToken 查询实体
     * @return 所有数据
     */
    @GetMapping
    public R selectAll(Page<AccessToken> page, AccessToken accessToken) {
        return success(this.accessTokenService.page(page, new QueryWrapper<>(accessToken)));
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.accessTokenService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param accessToken 实体对象
     * @return 新增结果
     */
    @PostMapping
    public R insert(@RequestBody AccessToken accessToken) {
        return success(this.accessTokenService.save(accessToken));
    }

    /**
     * 修改数据
     *
     * @param accessToken 实体对象
     * @return 修改结果
     */
    @PutMapping
    public R update(@RequestBody AccessToken accessToken) {
        return success(this.accessTokenService.updateById(accessToken));
    }

    /**
     * 删除数据
     *
     * @param idList 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.accessTokenService.removeByIds(idList));
    }
}

