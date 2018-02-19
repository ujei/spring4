package com.ace.common.spring.config;

import java.util.Set;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.beans.factory.annotation.AnnotatedBeanDefinition;
import org.springframework.beans.factory.config.BeanDefinitionHolder;
import org.springframework.beans.factory.support.AbstractBeanDefinition;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.GenericBeanDefinition;
import org.springframework.context.annotation.ClassPathBeanDefinitionScanner;
import org.springframework.core.type.filter.AnnotationTypeFilter;

public class CustomClassPathBeanDefinitionScanner extends ClassPathBeanDefinitionScanner {

	public CustomClassPathBeanDefinitionScanner(BeanDefinitionRegistry registry) {
		super(registry);
		initialize();
	}
	
	public void initialize() {
		resetFilters(false);
		addIncludeFilter(new AnnotationTypeFilter(Mapper.class));
	}

	@Override
	protected boolean isCandidateComponent(AnnotatedBeanDefinition beanDefinition) {
		return beanDefinition.getMetadata().isInterface() && beanDefinition.getMetadata().isIndependent();
	}
	
	public void scanAndUpdateBeanDefinition() {
		Set<BeanDefinitionHolder> definitionHolders = super.doScan("com.ace.offline.dao");
		
		for(BeanDefinitionHolder definitionHolder : definitionHolders) {
			GenericBeanDefinition definition = (GenericBeanDefinition)(definitionHolder.getBeanDefinition());
            definition.getConstructorArgumentValues().addGenericArgumentValue(definition.getBeanClassName());
            //BeanDefinition의 생성 클래스로 MapperProxyFactoryBean을 지정한다.
            definition.setBeanClass(MapperProxyFactoryBean.class);
            definition.setAutowireMode(AbstractBeanDefinition.AUTOWIRE_BY_TYPE);
            definition.setLazyInit(true);
		}
	}
	
}
