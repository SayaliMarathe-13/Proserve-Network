package Dao;

import java.util.List;

import javax.persistence.criteria.Order;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import Model.BookOrder;
import Model.ServiceProvider;

@Component
public class BookOrderDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	@Transactional
	  public int insert(BookOrder bookOrder) {
	    	int i =  (Integer) this.hibernateTemplate.save(bookOrder);
	        return i;
	    }
    @Transactional
	  public BookOrder getOrder(String contact) {
    	BookOrder bookOrder = this.hibernateTemplate.get(BookOrder.class, contact);
			return bookOrder;
		}
    @Transactional
    
    public List<BookOrder> loadAll() {

    	return (List<BookOrder>) this.hibernateTemplate.loadAll(BookOrder.class);

    	}
    @Transactional
    public void update(int oid) {
    try {
    BookOrder order = hibernateTemplate.get(BookOrder.class, oid);
    System.out.println("Retrieved ServiceProvider: " + order);
    order.setStatus("approved");
    this.hibernateTemplate.update(order);
    System.out.println("UPDATED..!!");
    } catch (Exception e) {
    System.out.println("FAILED..!!");
    e.printStackTrace();
    }
    }
    @Transactional
    public void updateToDisapproved(int oid) {
    try {
    BookOrder order = hibernateTemplate.get(BookOrder.class, oid);
    System.out.println("Retrieved ServiceProvider: " + order);
    order.setStatus("disapproved");
    this.hibernateTemplate.update(order);
    System.out.println("UPDATED..!!");
    } catch (Exception e) {
    System.out.println("FAILED..!!");
    e.printStackTrace();
    }
    }
    
	
}
