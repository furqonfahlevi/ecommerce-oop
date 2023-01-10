package ecommercecart;

import java.sql.SQLException;

public class Customer extends User {
    private String address;
    private Cart cart;
    
    public Customer(String name, String username, String email, String password,
                    String address) {
        super(name, username, email, password);
        this.address = address;
    }
    
    public String getAddress() {
        return address;
    }

    @Override
    public void info() {
        System.out.printf("Name:\t%s\n", getName());
        System.out.printf("Username:\t%s\n", getUsername());
        System.out.printf("Email:\t%s\n", getEmail());
        System.out.printf("Password:\t%s\n", getPassword());
        System.out.printf("Address:\t%s\n", getAddress());
    }
    
    public void insert_customer() throws SQLException {
        Database db = new Database();
        String sql = String.format("insert into customer (name, username, email, password, address) values ('%s', '%s', '%s', '%s', '%s')", 
                            this.getName(), this.getUsername(), this.getEmail(), this.getPassword(),
                            this.getAddress());
        db.query(sql);
    }
}
