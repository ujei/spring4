package com.ace.common.spring.config;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.BeanDefinitionRegistryPostProcessor;

public class CustomBeanDefinitionRegistryPostProcessor implements BeanDefinitionRegistryPostProcessor {

	public void postProcessBeanFactory(ConfigurableListableBeanFactory registry) throws BeansException {
		
	}

	public void postProcessBeanDefinitionRegistry(BeanDefinitionRegistry registry) throws BeansException {
		new CustomClassPathBeanDefinitionScanner(registry).scanAndUpdateBeanDefinition();
	}
	

}
