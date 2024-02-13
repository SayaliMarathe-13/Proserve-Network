package Controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import Dao.BookOrderDao;
import Dao.ServiceProviderDao;
import Dao.UserDao;
import Model.BookOrder;
import Model.ServiceProvider;
import Model.User;

@Controller
public class ProviderController {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	User user=context.getBean("user",User.class);
	UserDao userDao=context.getBean("userDao",UserDao.class);
    ServiceProvider serviceProvider=context.getBean("serviceProvider",ServiceProvider.class);
    ServiceProviderDao serviceProviderDao=context.getBean("serviceProviderDao",ServiceProviderDao.class);
    BookOrderDao bookOrderDao=context.getBean("bookOrderDao",BookOrderDao.class);
	BookOrder bookOrder=context.getBean("bookOrder",BookOrder.class);
    
    @RequestMapping("/providerLogin")
    public String ProviderLogin(){
  	  return "ProviderLogin";
    }
    @RequestMapping("/providerSignUp")
    public String ProviderSignUp(){
  	  return "ProviderSignUp";
    }
    
    @RequestMapping(path = "/afterProviderLogin", method = RequestMethod.POST)
	public String checkProvider(HttpServletRequest request, Model model, HttpSession session) {
	    String contact = request.getParameter("contact");
	    String password = request.getParameter("password");   
	    model.addAttribute("contact",contact);
	    try {
	    	ServiceProvider serviceProvider = serviceProviderDao.getAccount(contact);
	        if (!contact.equals(serviceProvider.getContact()) || !password.equals(serviceProvider.getPassword())) {
	            throw new RuntimeException("Invalid credentials or user not found");
	        }
	        session.setAttribute("loggedInContact", contact);
	        List<BookOrder> orders = bookOrderDao.loadAll();
	        List<BookOrder> filteredOrders = new ArrayList<BookOrder>();  
	        for (BookOrder filteredOrder : orders) {
	            if (contact.equals(filteredOrder.getServiceProviderContact())) 
	            		{
	            	filteredOrders.add(filteredOrder);
	            }
	        }
	        model.addAttribute("Orders", filteredOrders);
	        System.out.println("Provider verified");
	        return "ServiceProviderDashboard";

	    } catch (Exception e) {
	        e.printStackTrace();
	        return "error";
	    }
	    
	}
	@RequestMapping(path="/afterProviderSignup",method=RequestMethod.POST)
	public String SubmitProvider(@ModelAttribute ServiceProvider serviceProvider)
	{   
		try{
			String i=serviceProviderDao.insert(serviceProvider);
			System.out.println("user Account Added!!...");
			return "ProviderLogin";
		}
		catch(Exception e){
			e.printStackTrace();
			return "error";
		}
	}
    @RequestMapping("/viewPendingOrder")
    public String viewPendingOrder(@ModelAttribute BookOrder bookOrder,Model model,HttpSession session){
    	List<BookOrder> BookOrder= bookOrderDao.loadAll();
    	String loggedInContact = (String) session.getAttribute("loggedInContact");
	    model.addAttribute("BookOrderList", BookOrder);
	    model.addAttribute("contact", loggedInContact);
	    return "ViewPendingDashboard";
    }
    @RequestMapping("/viewTodaysOrders")
    public String viewTodaysOrders(@ModelAttribute BookOrder bookOrder,Model model,HttpSession session){
    	List<BookOrder> BookOrder= bookOrderDao.loadAll();
    	String loggedInContact = (String) session.getAttribute("loggedInContact");
	    model.addAttribute("BookOrderList", BookOrder);
	    model.addAttribute("contact", loggedInContact);
	    return "TodaysOrders";
    }
    @RequestMapping("/viewNext7DaysOrders")
    public String viewNext7DaysOrders(@ModelAttribute BookOrder bookOrder,Model model,HttpSession session){
    	List<BookOrder> BookOrder= bookOrderDao.loadAll();
    	String loggedInContact = (String) session.getAttribute("loggedInContact");
	    model.addAttribute("BookOrderList", BookOrder);
	    model.addAttribute("contact", loggedInContact);
	    return "Next7DaysOrders";
    }
    @RequestMapping("/viewOrderApproved")
    public String viewOrderApproved(@ModelAttribute BookOrder bookOrder,Model model,HttpSession session){
    	List<BookOrder> BookOrder= bookOrderDao.loadAll();
    	String loggedInContact = (String) session.getAttribute("loggedInContact");
	    model.addAttribute("BookOrderList", BookOrder);
	    model.addAttribute("contact", loggedInContact);
	    return "viewOrderApprovedDashboard";
    }
    @RequestMapping("/viewOrderDisapproved")
    public String viewOrderDisapproved(@ModelAttribute BookOrder bookOrder,Model model,HttpSession session){
    	List<BookOrder> BookOrder= bookOrderDao.loadAll();
    	String loggedInContact = (String) session.getAttribute("loggedInContact");
	    model.addAttribute("BookOrderList", BookOrder);
	    model.addAttribute("contact", loggedInContact);
	    return "viewOrderDisapprovedDashboard";
    }
	@RequestMapping(path="/approvedOrder/{oid}", method=RequestMethod.GET)
	public RedirectView update(@PathVariable("oid") int oid, HttpServletRequest request) {
	bookOrderDao.update(oid);
	RedirectView redirectview = new RedirectView();
	redirectview.setUrl(request.getContextPath() + "/viewOrderApproved");
	return redirectview;

	}
	@RequestMapping(path="/disapprovedOrder/{oid}", method=RequestMethod.GET)
	public RedirectView updateToDisapproved(@PathVariable("oid") int oid, HttpServletRequest request) {
	bookOrderDao.updateToDisapproved(oid);
	RedirectView redirectview = new RedirectView();
	redirectview.setUrl(request.getContextPath() + "/viewOrderDisapproved");
	return redirectview;
	}
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
	    session.invalidate();
	    return "redirect:/providerLogin"; 

	}
}


