package Model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
@Entity
@Component
public class User {
	@Id
private String contact;
private String name;
private Date dob;
private String address;
private int pincode;
private String area;
private String city;
private String email;
private String password;
public String getContact() {
	return contact;
}
public void setContact(String contact) {
	this.contact = contact;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public Date getDob() {
	return dob;
}
public void setDob(Date dob) {
	this.dob = dob;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public int getPincode() {
	return pincode;
}
public void setPincode(int pincode) {
	this.pincode = pincode;
}
public String getArea() {
	return area;
}
public void setArea(String area) {
	this.area = area;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
@Override
public String toString() {
	return "User [contact=" + contact + ", name=" + name + ", dob=" + dob + ", address=" + address + ", pincode="
			+ pincode + ", area=" + area + ", city=" + city + ", email=" + email + ", password=" + password + "]";
}
public User(String contact, String name, Date dob, String address, int pincode, String area, String city, String email,
		String password) {
	super();
	this.contact = contact;
	this.name = name;
	this.dob = dob;
	this.address = address;
	this.pincode = pincode;
	this.area = area;
	this.city = city;
	this.email = email;
	this.password = password;
}
public User() {
	super();
	// TODO Auto-generated constructor stub
}


}
