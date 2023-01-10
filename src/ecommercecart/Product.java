/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ecommercecart;

public class Product {
    private String seller_name = "";
    private String product_name = "";
    private int price;
    private String description = "";
    
    public Product(String SellerName, String ItemName, int price, String itemDetail) {
        this.product_name = ItemName;
        this.seller_name = SellerName;
        this.description = itemDetail;
        this.price = price;
    }

    public String getItemName() {
        return product_name;
    }

    public String getItemShortDesc() {
        return description;
    }

    public String getSellerName() {
        return seller_name;
    }
    
    public int getPrice() {
        return price;
    }

    public String getType(){
        return "";
    };
    
    public void insert_product() {
    
    }
    
    public void delete_product() {
        
    }
}

