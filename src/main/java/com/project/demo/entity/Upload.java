package com.project.demo.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;

/**
 * 
 * @TableName upload
 */
@TableName(value ="upload")
@Data
public class Upload implements Serializable {
    /**
     * 上传ID
     */
    @TableId(type = IdType.AUTO)
    private Integer uploadId;

    /**
     * 文件名
     */
    private String name;

    /**
     * 访问路径
     */
    private String path;

    /**
     * 文件路径
     */
    private String file;

    /**
     * 显示顺序
     */
    private String display;

    /**
     * 父级ID
     */
    private Integer fatherId;

    /**
     * 文件夹
     */
    private String dir;

    /**
     * 文件类型
     */
    private String type;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}