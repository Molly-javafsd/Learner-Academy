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

import com.example.pojo.Classes;
import com.example.pojo.ReportSubjectNTeacher;
import com.example.pojo.Student;

public class StudentDAO {
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



public int insert(Student s){
	
	try {
          hbUtil();
           row = (int) session.save(s);
           closeSession();          
           
       } catch (Exception e) {
           
           e.printStackTrace();
       }
	
	return row;
	
   }
public	List<Student> getAllData(int id){
	hbUtil();
	Query q=session.createQuery("from Student where Class_ID="+id);

	
	
	return q.list();
}
public String update(Student s){
	
	try {
           hbUtil();
            session.saveOrUpdate(s);
            closeSession();          
            
        } catch (Exception e) {
            
            e.printStackTrace();
        }
	
	return "updated";
	
    }

public String delete(Student s){
	
	try {
           hbUtil();
            session.delete(s);
            closeSession();          
            
        } catch (Exception e) {
            
            e.printStackTrace();
        }
	
	return "deleted";
	
    }


public List<Student> display(){
	StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
	
	Metadata md=new MetadataSources(ssr).getMetadataBuilder().build();

	SessionFactory sf=md.getSessionFactoryBuilder().build();
	
	Session session=sf.openSession();
	
	Transaction tran=session.beginTransaction();
	tran.commit();
	Query q=session.createQuery("from Student");
	   
	return q.list();
	
}


}
