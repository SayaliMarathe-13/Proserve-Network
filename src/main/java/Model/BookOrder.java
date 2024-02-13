package Model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class BookOrder {
@GeneratedValue(strategy = GenerationType.IDENTITY)
@Id
private int oid=0;
private String userName;
private String contact;
private String email;
private String serviceProviderName;
private String ServiceProviderContact;
private Date date;
private String time;
private String serviceTitle;
private String serviceDescription;
private String status="Pending";
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getServiceProviderName() {
	return serviceProviderName;
}
public void setServiceProviderName(String serviceProviderName) {
	this.serviceProviderName = serviceProviderName;
}
public String getServiceProviderContact() {
	return ServiceProviderContact;
}
public void setServiceProviderContact(String serviceProviderContact) {
	ServiceProviderContact = serviceProviderContact;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getServiceTitle() {
	return serviceTitle;
}
public void setServiceTitle(String serviceTitle) {
	this.serviceTitle = serviceTitle;
}
public String getServiceDescription() {
	return serviceDescription;
}
public void setServiceDescription(String serviceDescription) {
	this.serviceDescription = serviceDescription;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}

public int getOid() {
	return oid;
}
public void setOid(int oid) {
	this.oid = oid;
}
@Override
public String toString() {
	return "Order [userName=" + userName + ", contact=" + contact + ", email=" + email + ", serviceProviderName="
			+ serviceProviderName + ", ServiceProviderContact=" + ServiceProviderContact + ", date=" + date + ", time="
			+ time + ", serviceTitle=" + serviceTitle + ", serviceDescription=" + serviceDescription + ", status="
			+ status + "]";
}

public BookOrder(int oid, String userName, String contact, String email, String serviceProviderName,
		String serviceProviderContact, Date date, String time, String serviceTitle, String serviceDescription,
		String status) {
	super();
	this.oid = oid;
	this.userName = userName;
	this.contact = contact;
	this.email = email;
	this.serviceProviderName = serviceProviderName;
	ServiceProviderContact = serviceProviderContact;
	this.date = date;
	this.time = time;
	this.serviceTitle = serviceTitle;
	this.serviceDescription = serviceDescription;
	this.status = status;
}
public BookOrder() {
	super();

}


}
