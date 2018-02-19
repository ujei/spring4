package com.ace.common.spring.config;

import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Map;

import org.apache.ibatis.binding.MapperMethod;
import org.apache.ibatis.binding.MapperProxy;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.FactoryBean;

public class MapperProxyFactoryBean<T> implements FactoryBean<T> {

	private Class<T> mapperInterfaceType;
	private SqlSession sqlSession;
	private Map<Method, MapperMethod> methodCache;
	
	public MapperProxyFactoryBean(Class<T> mapperInterfaceType) {
		this.mapperInterfaceType = mapperInterfaceType;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public T getObject() throws Exception {
		return (T) Proxy.newProxyInstance(Class.class.getClassLoader(), new Class<?>[] {mapperInterfaceType}, new MapperProxy(sqlSession, mapperInterfaceType, methodCache));
	}

	public Class<?> getObjectType() {
		return mapperInterfaceType;
	}

	public boolean isSingleton() {
		// TODO Auto-generated method stub
		return true;
	}

}
