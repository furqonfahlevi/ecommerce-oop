package ecommercecart;

import java.sql.SQLException;
import java.util.ArrayList;

public class Cart {
    private ArrayList<Product> product = new ArrayList<>();
    
    public Cart(ArrayList<Product> p) {
        this.product = p;
    }
    
    public ArrayList<Product> getProduct() {
        return product;
    }
    
    public void insert_cart(String product_name, int price) {
        try {
            Database db = new Database();
            String sql = String.format("INSERT INTO cart VALUES "
                    + "('%s', %d)", product_name, price);
            db.query(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public void delete_cart(String product_name) {
        try {
            Database db = new Database();
            String sql = String.format("DELETE FROM cart WHERE product_"
                    + "name = '%s'", product_name);
            db.query(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}