package Dao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import Model.ServiceProvider;
import Model.User;

@Component
public class UserDao {
	@Autowired
    private ServiceProviderDao serviceProviderDao;
	@Autowired
	private HibernateTemplate hibernateTemplate;
    @Transactional
    public String insert(User user) {
    	String i = (String) this.hibernateTemplate.save(user);
        return i;
    }
    @Transactional
	public User getAccount(String name) {
    	User user = this.hibernateTemplate.get(User.class, name);
		return user;
		}
	public UserDao(HibernateTemplate hibernateTemplate) {
		super();
		this.hibernateTemplate = hibernateTemplate;
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
    public List<ServiceProvider> getProvidersByCategory(String category) {
        List<ServiceProvider> allProviders = serviceProviderDao.loadAll();

        List<ServiceProvider> filteredProviders = new ArrayList<ServiceProvider>();  
        for (ServiceProvider provider : allProviders) {
            if (category.equals(provider.getCategory()) && provider.getStatus().equals("approved")) {
                filteredProviders.add(provider);
            }
        }

        return filteredProviders;
    }
    @Transactional
	  public ServiceProvider getProvider(String contact) {
    	ServiceProvider serviceProvider = this.hibernateTemplate.get(ServiceProvider.class, contact);
			return serviceProvider;
		}
}
