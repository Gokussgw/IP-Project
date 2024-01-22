package my.utm.ip.spring_jdbc.entity;


public class User {
    
    private int UserId;
    private String email;
    private String password;
    private String name;
    private String role;
    private String address;
    private String ResidentialArea;
    private String IDNumber;



    // Other fields, getters, and setters
    public User() {
        UserId = 0;
        email = "";
        password = "";
        name = "";
        role = "";
        address = "";
        ResidentialArea = "";
        IDNumber = "";
    }

    public User(int UserId, String email, String password, String name, String role, String address , String ResidentialArea, String IDNumber) {
        this.UserId = UserId;
        this.email = email;
        this.password = password;
        this.name = name;
        this.role = role;
        this.address = address;
        this.ResidentialArea = ResidentialArea;
        this.IDNumber = IDNumber;
    }

    // getters
    public int getUserId() {
        return UserId;
    }
    public String getEmail() {
        return email;
    }
    public String getPassword() {
        return password;
    }
    public String getName()
    {
        return name;
    }
    public String getRole()
    {
        return role;
    }
    public String getAddress()
    {
        return address;
    }
    public String getResidentialArea()
    {
        return ResidentialArea;
    }
    public String getIDNumber()
    {
        return IDNumber;
    }

    //setters
    public void setUserId(int id) {
        this.UserId = id;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public void setName(String name)
    {
        this.name = name;
    }
    public void setRole(String role)
    {
        this.role = role;
    }
    public void setAddress(String address)
    {
        this.address = address;
    }
    public void setResidentialArea(String ResidentialArea)
    {
        this.ResidentialArea = ResidentialArea;
    }
    public void setIDNumber(String IDNumber)
    {
        this.IDNumber = IDNumber;
    }
    
    // toString method for debugging
    @Override
    public String toString() {
        return "User{" +
               "id=" + UserId +
               ", email='" + email + '\'' +
               ", password='" + password + '\'' +
               ", name='" + name + '\'' +
               ", role='" + role + '\'' +
               ", address='" + address + '\'' +
               ", ResidentialArea='" + ResidentialArea + '\'' +
               ", IDNumber='" + IDNumber + '\'' +
               '}';
    }

}

