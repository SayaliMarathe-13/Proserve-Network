package Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import Dao.ServiceProviderDao;
import Dao.UserDao;
import Model.ServiceProvider;
import Model.User;

@org.springframework.stereotype.Controller
public class Controller {
	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	User user=context.getBean("user",User.class);
	UserDao userDao=context.getBean("userDao",UserDao.class);
    ServiceProvider serviceProvider=context.getBean("serviceProvider",ServiceProvider.class);
    ServiceProviderDao serviceProviderDao=context.getBean("serviceProviderDao",ServiceProviderDao.class);
  @RequestMapping("/")
  public String index(){
	  return "Home";
  }
  @RequestMapping("/adminLogin")
  public String Login(){
	  return "AdminLogin";
  }
  @RequestMapping("/adminDashboard")
  public String AdminDashboard(Model model){
	  
	  List<ServiceProvider> serviceProviderList = serviceProviderDao.loadAll();
	    model.addAttribute("serviceProviderList", serviceProviderList);
	  return "AdminDashboard";
  }
  @RequestMapping("/pendingDashboard")
  public String PendingDashboard(Model model){
	  List<ServiceProvider> serviceProviderList = serviceProviderDao.loadAll();
	    model.addAttribute("serviceProviderList", serviceProviderList);
	  
	  return "PendingProvider";
  }
  @RequestMapping("/approvedDashboard")
  public String approvedDashboard(Model model){
	  List<ServiceProvider> serviceProviderList = serviceProviderDao.loadAll();
	    model.addAttribute("serviceProviderList", serviceProviderList);
	  
	  return "Approved";
  }
  @RequestMapping("/disapprovedDashboard")
  public String disapprovedDashboard(Model model){
	  List<ServiceProvider> serviceProviderList = serviceProviderDao.loadAll();
	    model.addAttribute("serviceProviderList", serviceProviderList);
	  
	  return "Disapproved";
  }

  
	@RequestMapping(path="/afterLogin",method=RequestMethod.POST)
	public String checkLogin(HttpServletRequest request,Model model)
	{
		String uname = request.getParameter("username");
		String password = request.getParameter("password");
		if (uname.equals("Sayali")&& password.equals("Sayali123")){
			System.out.println("Login Succesfull..!!");
			System.out.println(uname+" "+password);
			model.addAttribute("uname",uname);
			model.addAttribute("password", password);
			List<ServiceProvider> serviceProviderList = serviceProviderDao.loadAll();
		    model.addAttribute("serviceProviderList", serviceProviderList);
			System.out.println(model);
			return "AdminDashboard";
		}
		else{
			return "error";
		}
	}
	
	@RequestMapping(path="/approved/{contact}", method=RequestMethod.GET)
	public RedirectView update(@PathVariable("contact") String contact, HttpServletRequest request) {
	serviceProviderDao.update(contact);
	RedirectView redirectview = new RedirectView();
	redirectview.setUrl(request.getContextPath() + "/adminDashboard");
	return redirectview;

	}
	@RequestMapping(path="/disapproved/{contact}", method=RequestMethod.GET)
	public RedirectView updateToDisapproved(@PathVariable("contact") String contact, HttpServletRequest request) {
	serviceProviderDao.updateToDisapproved(contact);
	RedirectView redirectview = new RedirectView();
	redirectview.setUrl(request.getContextPath() + "/adminDashboard");
	return redirectview;
	}
	@RequestMapping("/adminLogout")
	public String logout(HttpSession session) {
	    session.invalidate();
	    return "redirect:/adminLogin"; 

	}
    
}
	

