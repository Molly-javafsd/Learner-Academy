package com.example.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;
import com.example.pojo.Subject;

public class SubjectDAO {
	StandardServiceRegistry ssr;
	Metadata md;
	SessionFactory sf;
	Transaction trans;
	Session session;

int row=0;

public void hbUtil()
{
   
   try {
    	
     ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		
	 md=new MetadataSources(ssr).getMetadataBuilder().build();

	 sf=md.getSessionFactoryBuilder().build();
  
	 session = sf.openSession();
        
     trans = session.beginTransaction();
            
                   
            
        } catch (Exception e) {
            
            e.printStackTrace();
        }
	
}
public void closeSession()

{
   trans.commit();
   session.close();
}



public int insert(Subject a){
	
	try {
          hbUtil();
           row = (int) session.save(a);
           closeSession();          
           
       } catch (Exception e) {
           
           e.printStackTrace();
       }
	
	return row;
	
   }

public String update(Subject a){
	
	try {
           hbUtil();
            session.saveOrUpdate(a);
            closeSession();          
            
        } catch (Exception e) {
            
            e.printStackTrace();
        }
	
	return "updated";
	
    }

public String delete(Subject a){
	
	try {
           hbUtil();
            session.delete(a);
            closeSession();          
            
        } catch (Exception e) {
            
            e.printStackTrace();
        }
	
	return "deleted";
	
    }



public List<Subject> display(){
	StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
	
	Metadata md=new MetadataSources(ssr).getMetadataBuilder().build();

	SessionFactory sf=md.getSessionFactoryBuilder().build();
	
	Session session=sf.openSession();
	
	Transaction tran=session.beginTransaction();
	tran.commit();
	Query q=session.createQuery("from Subject");
	   
	return q.list();
	
}
}
