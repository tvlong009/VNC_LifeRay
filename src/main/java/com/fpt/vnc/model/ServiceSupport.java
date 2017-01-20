package com.fpt.vnc.model;

import org.apache.ibatis.session.defaults.DefaultSqlSessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public abstract class ServiceSupport {
	ApplicationContext context = new ClassPathXmlApplicationContext("vnc/spring/context-datasource.xml");
	public DefaultSqlSessionFactory sessionFactory = (DefaultSqlSessionFactory) context.getBean("sqlSessionFactory");
}
