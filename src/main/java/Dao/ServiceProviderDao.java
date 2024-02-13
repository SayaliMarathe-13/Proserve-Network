package Dao;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.hibernate.query.Query;
import Model.ServiceProvider;
import Model.User;
import java.util.List;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import javax.transaction.Transactional;

@Component
public class ServiceProviderDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	  public String insert(ServiceProvider serviceProvider) {
	    	String i = (String) this.hibernateTemplate.save(serviceProvider);
	        return i;
	    }
    @Transactional
	  public ServiceProvider getAccount(String contact) {
    	ServiceProvider serviceProvider = this.hibernateTemplate.get(ServiceProvider.class, contact);
			return serviceProvider;
		}
    @Transactional
  
    public List<ServiceProvider> loadAll() {

    	return (List<ServiceProvider>) this.hibernateTemplate.loadAll(ServiceProvider.class);

    	}
    @Transactional
    public void update(String contact) {
    try {
    ServiceProvider acc = hibernateTemplate.get(ServiceProvider.class, contact);
    System.out.println("Retrieved ServiceProvider: " + acc);
    acc.setStatus("approved");
    this.hibernateTemplate.update(acc);
    System.out.println("UPDATED..!!");
    } catch (Exception e) {
    System.out.println("FAILED..!!");
    e.printStackTrace();
    }
    }
    @Transactional
    public void updateToDisapproved(String contact) {
    try {
    ServiceProvider acc = hibernateTemplate.get(ServiceProvider.class, contact);
    System.out.println("Retrieved ServiceProvider: " + acc);
    acc.setStatus("disapproved");
    this.hibernateTemplate.update(acc);
    System.out.println("UPDATED..!!");
    } catch (Exception e) {
    System.out.println("FAILED..!!");
    e.printStackTrace();
    }
    }
    
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public ServiceProviderDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}
	public ServiceProviderDao() {
		super();
	}
	@Override
	public String toString() {
		return "ServiceProviderDao [hibernateTemplate=" + hibernateTemplate + "]";
	}
    
}
