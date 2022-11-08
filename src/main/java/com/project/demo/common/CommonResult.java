package com.project.demo.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 公共的返回结果集
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CommonResult<T> {

    /**
     * 状态码
     */
    private Integer code;

    /**
     * 状态信息
     */
    private String msg;

    /**
     * 返回的数据
     */
    private T data;

    public CommonResult(Integer code, String msg) {
        this(code, msg, null);
    }

    public CommonResult(T data) {
        this(200, "请求成功", data);
    }

    /**
     * 返回数据+状态信息
     * 
     * @param <T>
     * @param code
     * @param msg
     * @param t
     * @return CommonResult
     */
    public static <T> CommonResult okResult(Integer code, String msg, T t) {
        CommonResult<T> commonResult = new CommonResult<T>(code, msg, t);
        return commonResult;
    }

    /**
     * 不需要返回数据的结果
     * 
     * @param <T>
     * @param code
     * @param msg
     * @return CommonResult
     */
    public static <T> CommonResult okResult(Integer code, String msg) {
        CommonResult<T> commonResult = new CommonResult<T>(code, msg);
        return commonResult;
    }

    /**
     * 无任何参数，默认返回成功
     * 
     * @return CommonResult
     */
    public static CommonResult success() {
        CommonResult commonResult = new CommonResult(null);
        return commonResult;
    }

    /**
     * 只需要添加数据，状态信息默认为200和成功
     * 
     * @param <T>
     * @param t
     * @return CommonResult
     */
    public static <T> CommonResult okResult(T t) {
        return new CommonResult<T>(t);
    }

}
