package Model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
@Entity
@Component
public class ServiceProvider {
	@Id
private String contact;
private String name;
private int age;
private String address;
private int pincode;
private String area;
private String city;
private float latitute;
private float longitude;
private String email;
private String password;
private String category;
private String ServiceType;
private String openTime;
private String closeTime;
private String status="pending";
public ServiceProvider(String status) {
	super();
	this.status = status;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
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
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
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
public float getLatitute() {
	return latitute;
}
public void setLatitute(float latitute) {
	this.latitute = latitute;
}
public float getLongitude() {
	return longitude;
}
public void setLongitude(float longitude) {
	this.longitude = longitude;
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
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getServiceType() {
	return ServiceType;
}
public void setServiceType(String serviceType) {
	ServiceType = serviceType;
}
public String getOpenTime() {
	return openTime;
}
public void setOpenTime(String openTime) {
	this.openTime = openTime;
}
public String getCloseTime() {
	return closeTime;
}
public void setcloseTime(String closeTime) {
	this.closeTime = closeTime;
}
@Override
public String toString() {
	return "ServiceProvider [contact=" + contact + ", name=" + name + ", age=" + age + ", address=" + address
			+ ", pincode=" + pincode + ", area=" + area + ", city=" + city + ", latitute=" + latitute + ", longitude="
			+ longitude + ", email=" + email + ", password=" + password + ", category=" + category + ", ServiceType="
			+ ServiceType + ", openTime=" + openTime + ", closeTime=" + closeTime + "]";
}
public ServiceProvider(String contact, String name, int age, String address, int pincode, String area, String city,
		float latitute, float longitude, String email, String password, String category, String serviceType,
		String openTime, String closeTime) {
	super();
	this.contact = contact;
	this.name = name;
	this.age = age;
	this.address = address;
	this.pincode = pincode;
	this.area = area;
	this.city = city;
	this.latitute = latitute;
	this.longitude = longitude;
	this.email = email;
	this.password = password;
	this.category = category;
	ServiceType = serviceType;
	this.openTime = openTime;
	this.closeTime = closeTime;
}
public ServiceProvider() {
	super();

}


}
