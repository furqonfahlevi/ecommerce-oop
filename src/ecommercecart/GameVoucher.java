/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommercecart;

import java.sql.SQLException;

/**
 *
 * @author Levi
 */
public class GameVoucher extends Product {
    private String type;

    public GameVoucher(String SellerName, String ItemName, int price,
            String itemDetail, String type) {
        super(SellerName, ItemName, price, itemDetail);
        this.type = type;
    }
    
    @Override
    public String getType() {
        return type;
    }
    
    @Override
    public void insert_product() {
        try {
            Database db = new Database();
            String sql = String.format("INSERT INTO gamevoucher VALUES "
                    + "('%s', '%s', %d, '%s', '%s')", this.getSellerName(),
                    this.getItemName(), this.getPrice(), this.getItemShortDesc(),
                    this.getType());
            db.query(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    
    public void delete_product(String product_name) {
        try {
            Database db = new Database();
            String sql = String.format("DELETE FROM gamevoucher WHERE product_"
                    + "name = '%s'", product_name);
            db.query(sql);
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}
