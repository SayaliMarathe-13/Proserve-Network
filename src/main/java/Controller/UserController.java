package Controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.criteria.Order;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Dao.BookOrderDao;
import Dao.ServiceProviderDao;
import Dao.UserDao;
import Model.ServiceProvider;
import Model.User;
import Model.BookOrder;
@Controller
public class UserController {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	User user=context.getBean("user",User.class);
	UserDao userDao=context.getBean("userDao",UserDao.class);
	BookOrderDao bookOrderDao=context.getBean("bookOrderDao",BookOrderDao.class);
	BookOrder bookOrder=context.getBean("bookOrder",BookOrder.class);
    ServiceProvider serviceProvider=context.getBean("serviceProvider",ServiceProvider.class);
    ServiceProviderDao serviceProviderDao=context.getBean("serviceProviderDao",ServiceProviderDao.class);
    
    @RequestMapping("/userLogin")
    public String UserLogin(){
      
  	  return "UserLogin";
    }
    @RequestMapping("/userSignUp")
    public String UserSignUp(){
  	  return "UserSignUp";
    }
  	@RequestMapping(path="/afterUserSignup",method=RequestMethod.POST)
  	public String SubmitUser(@ModelAttribute User user)
  	{   
  		try{
  			String i=userDao.insert(user);
  			System.out.println("user Account Added!!...");
  			return "UserLogin";
  		}
  		catch(Exception e){
  			e.printStackTrace();
  			return "error";
  		}
  	}
  	@RequestMapping(path = "/afterLoginSubmit", method = RequestMethod.POST)
	public String checkUser(HttpServletRequest request, Model model,HttpSession session) {
	    String contact = request.getParameter("contact");
	    String password = request.getParameter("password");
	  
	    try {
	        User user = userDao.getAccount(contact);
            model.addAttribute("name",user.getName());
	        if (user == null || !contact.equals(user.getContact()) || !password.equals(user.getPassword())) {
	            throw new RuntimeException("Invalid credentials or user not found");
	        }
	        System.out.println("User verified");
	        session.setAttribute("loggedInContact", contact);
	        return "UserDashboard";

	    } catch (Exception e) {
	        e.printStackTrace();
	        return "error";
	    }
	}
 	 @RequestMapping("/userOwnOrders")
     public String UserOwnOrderDashboard(@ModelAttribute BookOrder bookOrder,Model model,HttpSession session){
 		List<BookOrder> BookOrder= bookOrderDao.loadAll();
    	String loggedInContact = (String) session.getAttribute("loggedInContact");
	    model.addAttribute("BookOrderList", BookOrder);
	    model.addAttribute("contact", loggedInContact);
	    return "UserOwnOrderDashboard";
     }
 	 @RequestMapping("/userApprovedOrders")
     public String UserApprovedOrderDashboard(@ModelAttribute BookOrder bookOrder,Model model,HttpSession session){
 		List<BookOrder> BookOrder= bookOrderDao.loadAll();
    	String loggedInContact = (String) session.getAttribute("loggedInContact");
	    model.addAttribute("BookOrderList", BookOrder);
	    model.addAttribute("contact", loggedInContact);
	    return "UserApprovedOrderDashboard";
     }
 	 @RequestMapping("/userDisapprovedOrders")
     public String UserDisapprovedOrderDashboard(@ModelAttribute BookOrder bookOrder,Model model,HttpSession session){
 		List<BookOrder> BookOrder= bookOrderDao.loadAll();
    	String loggedInContact = (String) session.getAttribute("loggedInContact");
	    model.addAttribute("BookOrderList", BookOrder);
	    model.addAttribute("contact", loggedInContact);
	    return "UserDisapprovedOrderDashboard";
     }
  	 @RequestMapping("/userDashboard")
     public String UserDashboard(Model model,HttpSession session){
  	  String loggedInContact = (String) session.getAttribute("loggedInContact");
	  User user=userDao.getAccount(loggedInContact);
	  model.addAttribute("user",user);
   	  return "UserDashboard";
     }
  	@GetMapping("/bookOrder/{contact}")
    public String showBookOrderForm(@PathVariable String contact, Model model,HttpSession session) {
        ServiceProvider serviceProvider = userDao.getProvider(contact);
        model.addAttribute("serviceProvider", serviceProvider);
        String loggedInContact = (String) session.getAttribute("loggedInContact");
        User user=userDao.getAccount(loggedInContact);
        model.addAttribute("user",user);
        return "BookOrderForm";
    }
  	@RequestMapping(path="/afterBookOrder",method=RequestMethod.POST)
  	public String SubmitOrder(@ModelAttribute BookOrder bookOrder)
  	{   
  		try{
  			int i=bookOrderDao.insert(bookOrder);
  			System.out.println("Order Booked Successfully!!..."+i);
  			return "UserDashboard";
  		}
  		catch(Exception e){
  			e.printStackTrace();
  			return "error";
  		}
  	}
  	@RequestMapping(path="/userPendingOrdersDashboard")
  	public String PendingBookOrder(@ModelAttribute BookOrder bookOrder,Model model)
  	{   
  		try{
  			List<BookOrder> BookOrder= bookOrderDao.loadAll();
		    model.addAttribute("BookOrderList", BookOrder);
  			return "ViewPendingDashboard";
  		}
  		catch(Exception e){
  			e.printStackTrace();
  			return "error";
  		}
  	}

    @GetMapping("/categorizedProvidersDashboard")
    public String categorizedProviderDashboard(@RequestParam("category") String category, Model model) {
        List<ServiceProvider> filteredProviders = userDao.getProvidersByCategory(category);
        model.addAttribute("categorizedProviders", filteredProviders);
        return "CategorizedProvidersDashboard";
    }
	@RequestMapping("/userLogout")
	public String logout(HttpSession session) {
	    session.invalidate();
	    return "redirect:/userLogin"; 

	}
  	 
}
