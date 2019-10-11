package customer;

public class Customer {
    private String name;
    private int age;
    private String address;
    private String picture;

    public Customer(String name, int age, String address, String picture) {
        this.name = name;
        this.age = age;
        this.address = address;
        this.picture = picture;
    }

    public String getName() {
        return name;
    }

    public int getAge() {
        return age;
    }

    public String getAddress() {
        return address;
    }

    public String getPicture() {
        return picture;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}
