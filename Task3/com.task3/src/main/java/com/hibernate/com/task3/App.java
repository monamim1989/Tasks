package com.hibernate.com.task3;

import java.util.HashMap;
import java.util.Map;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

public class App 
{
    public static void main( String[] args )
    {
    	Configuration cfg=new Configuration();
        cfg.configure("hibernate-cfg.xml");
        System.out.println("Configuration Object Created Successfully");
        SessionFactory sf=cfg.buildSessionFactory();
        System.out.println("Session Factory Object Created");
        Session s=sf.openSession();
        Transaction tx=s.beginTransaction();
        //Details of Employee A
        Emp e1=new Emp();
        e1.setId(100);
        e1.setName("Employee A");
        Map<String,Certificate> map1 = new HashMap<String,Certificate>();
        map1.put("Computer Engineering", new Certificate("MS"));
        map1.put("Business Management", new Certificate("MBA"));
        map1.put("Project Management", new Certificate("PMP"));
        e1.setCertificates(map1);
        s.persist(e1);
        //Details of Employee B
        Emp e2=new Emp();
        e2.setId(200);
        e2.setName("Employee B");
        Map<String,Certificate> map2 = new HashMap<String,Certificate>();
        map2.put("Computer Science", new Certificate("MTech"));
        map2.put("Financial Management", new Certificate("MBA"));
        e2.setCertificates(map2);
        s.persist(e2);
        tx.commit();
        s.close();
        sf.close();
    }
}
