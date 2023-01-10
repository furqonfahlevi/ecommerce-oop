package ecommercecart;

import java.sql.ResultSet;

public class OrderDetail {
    
    public OrderDetail() {
        
    }
    
    public void find_detail(javax.swing.JList<String> jList_cart, javax.swing.JTextField detail_product_name, 
            javax.swing.JTextField detail_seller_name, javax.swing.JTextField detail_price, 
            javax.swing.JTextArea detail_description, Product product) {
        try {
//            Database db = new Database();
//            String sql_fashion = String.format("SELECT * FROM fashion WHERE "
//                    + "product_name = '%s'", jList_cart.getSelectedValue());
//            String sql_electronic = String.format("SELECT * FROM electronic WHERE "
//                    + "product_name = '%s'", jList_cart.getSelectedValue());
//            String sql_kitchen = String.format("SELECT * FROM kitchen_set WHERE "
//                    + "product_name = '%s'", jList_cart.getSelectedValue());
//            String sql_gamevoucher = String.format("SELECT * FROM gamevoucher WHERE "
//                    + "product_name = '%s'", jList_cart.getSelectedValue());
//            String sql_pcgamingaccessories = String.format("SELECT * FROM pcgamingaccessories WHERE "
//                    + "product_name = '%s'", jList_cart.getSelectedValue());
//            
//            ResultSet rs_fashion = db.getData(sql_fashion);
//            while (rs_fashion.next()) {
//                detail_product_name.setText(rs_fashion.getString("product_name"));
//                detail_seller_name.setText(rs_fashion.getString("seller_name"));
//                detail_price.setText(Integer.toString(rs_fashion.getInt("price")));
//                detail_description.setText(rs_fashion.getString("description"));
//            }
            detail_product_name.setText(product.getItemName());
            detail_seller_name.setText(product.getSellerName());
            detail_price.setText(Integer.toString(product.getPrice()));
            detail_description.setText(product.getItemShortDesc());
//            
//            ResultSet rs_electronic = db.getData(sql_electronic);
//            while (rs_electronic.next()) {
//                detail_product_name.setText(rs_electronic.getString("product_name"));
//                detail_seller_name.setText(rs_electronic.getString("seller_name"));
//                detail_price.setText(Integer.toString(rs_electronic.getInt("price")));
//                detail_description.setText(rs_electronic.getString("description"));
//            }
//            
//            ResultSet rs_kitchen = db.getData(sql_kitchen);
//            while (rs_kitchen.next()) {
//                detail_product_name.setText(rs_kitchen.getString("product_name"));
//                detail_seller_name.setText(rs_kitchen.getString("seller_name"));
//                detail_price.setText(Integer.toString(rs_kitchen.getInt("price")));
//                detail_description.setText(rs_kitchen.getString("description"));
//            }
//            
//            ResultSet rs_gamevoucher = db.getData(sql_gamevoucher);
//            while (rs_gamevoucher.next()) {
//                detail_product_name.setText(rs_gamevoucher.getString("product_name"));
//                detail_seller_name.setText(rs_gamevoucher.getString("seller_name"));
//                detail_price.setText(Integer.toString(rs_gamevoucher.getInt("price")));
//                detail_description.setText(rs_gamevoucher.getString("description"));
//            }
//            
//            ResultSet rs_pcgamingaccessories = db.getData(sql_pcgamingaccessories);
//            while (rs_pcgamingaccessories.next()) {
//                detail_product_name.setText(rs_pcgamingaccessories.getString("product_name"));
//                detail_seller_name.setText(rs_pcgamingaccessories.getString("seller_name"));
//                detail_price.setText(Integer.toString(rs_pcgamingaccessories.getInt("price")));
//                detail_description.setText(rs_pcgamingaccessories.getString("description"));
//            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
