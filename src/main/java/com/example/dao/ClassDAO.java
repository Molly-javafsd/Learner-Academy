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

public class ClassDAO {
	
	
			StandardServiceRegistry ssr;
			Metadata md;
			SessionFactory sf;
			Transaction trans;
			Session session;
	   
	   int row=0;
	
	 public void hiberUtil()
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
	 
	 
	 
	public int insert(Classes c){
		
		try {
               hiberUtil();
	            row = (int) session.save(c);
	            closeSession();          
	            
	        } catch (Exception e) {
	            
	            e.printStackTrace();
	        }
		
		return row;
		
	    }
	  
	   public Classes getClasse(int id) {
		   hiberUtil();
		   Classes c=session.get(Classes.class, id);
		   closeSession();
		   return c;
	   }
	   public String update(Classes c){
			
			try {
	               hiberUtil();
		            session.saveOrUpdate(c);
		            closeSession();          
		            
		        } catch (Exception e) {
		            
		            e.printStackTrace();
		        }
			
			return "updated";
			
		    }
	   
	   public String delete(Classes c){
			
			try {
	               hiberUtil();
		            session.delete(c);
		            closeSession();          
		            
		        } catch (Exception e) {
		            
		            e.printStackTrace();
		        }
			
			return "deleted";
			
		    }
	   
	 
		
	
	public List<Classes> display(){
		StandardServiceRegistry ssr=new StandardServiceRegistryBuilder().configure("hibernate.cfg.xml").build();
		
		Metadata md=new MetadataSources(ssr).getMetadataBuilder().build();
	
		SessionFactory sf=md.getSessionFactoryBuilder().build();
		
		Session session=sf.openSession();
		
		Transaction tran=session.beginTransaction();
		tran.commit();
		Query q=session.createQuery("from Classes");
		   
		return q.list();
		
	}

	
	 {
		
	}
}
