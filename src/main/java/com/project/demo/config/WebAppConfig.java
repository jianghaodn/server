package com.project.demo.config;

import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.serializer.ToStringSerializer;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import com.project.demo.interceptor.LoginInterceptor;
import lombok.extern.slf4j.Slf4j;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 */
@Configuration
@Slf4j
public class WebAppConfig implements WebMvcConfigurer {

    /**
     * 配置跨域
     */
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**") // 设置允许跨域的路径
                .allowedOriginPatterns("*")// 设置允许跨域请求的域名
                .allowCredentials(true)// 设置是否允许cookie
                .allowedMethods("GET", "POST", "DELETE", "PUT")// 允许的请求方式
                .allowedHeaders("*")// header属性
                .maxAge(3600);// 跨域时间
    }

    /**
     * 使用@Bean注入fastJsonHttpMessageConvert
     * 
     * @return HttpMessageConverter
     */
    @Bean
    public HttpMessageConverter fastJsonHttpMessageConverters() {
        // 1.需要定义一个Convert转换消息的对象
        FastJsonHttpMessageConverter fastConverter = new FastJsonHttpMessageConverter();
        FastJsonConfig fastJsonConfig = new FastJsonConfig();
        fastJsonConfig.setSerializerFeatures(SerializerFeature.PrettyFormat);
        fastJsonConfig.setDateFormat("yyyy-MM-dd HH:mm:ss");

        SerializeConfig.globalInstance.put(Long.class, ToStringSerializer.instance);

        fastJsonConfig.setSerializeConfig(SerializeConfig.globalInstance);
        fastConverter.setFastJsonConfig(fastJsonConfig);
        HttpMessageConverter<?> converter = fastConverter;
        return converter;
    }

    @Override
    public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
        converters.add(fastJsonHttpMessageConverters());
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        // 登录拦截的管理器
        InterceptorRegistration registration = registry.addInterceptor(loginInterceptor());
        // 拦截的地址
        registration.addPathPatterns("/**");
        // 方行的地址
        // registration.excludePathPatterns("/**");
        // 根据需要拦截，一般设置所有地址拦截，放行公共连接
    }

    @Bean
    public LoginInterceptor loginInterceptor() {
        return new LoginInterceptor();
    }

}
