package ecommercecart;

import java.sql.ResultSet;
import java.util.ArrayList;

public class Payment {
    
    private ArrayList<Product> arrListProd; 
    public Payment(ArrayList<Product> arrListProd) {
        this.arrListProd = arrListProd;
    }
    
    public int countPrice(javax.swing.JList<String> jList_cart) {
        int totalPrice = 0;
        try {
//            for (int i = 0; i < jList_cart.getModel().getSize(); i++) {
//                Database db = new Database();
//                jList_cart.setSelectedIndex(i);
//                String sql_fashion = String.format("SELECT price FROM fashion WHERE "
//                        + "product_name = '%s'", jList_cart.getSelectedValue());
//                String sql_electronic = String.format("SELECT price FROM electronic WHERE "
//                        + "product_name = '%s'", jList_cart.getSelectedValue());
//                String sql_kitchen = String.format("SELECT price FROM kitchen_set WHERE "
//                        + "product_name = '%s'", jList_cart.getSelectedValue());
//                String sql_gamevoucher = String.format("SELECT price FROM gamevoucher WHERE "
//                        + "product_name = '%s'", jList_cart.getSelectedValue());
//                String sql_pcgamingaccessories = String.format("SELECT price FROM pcgamingaccessories WHERE "
//                        + "product_name = '%s'", jList_cart.getSelectedValue());
//
//                ResultSet rs_fashion = db.getData(sql_fashion);
//                while (rs_fashion.next()) {
//                    totalPrice = totalPrice + rs_fashion.getInt("price");
//                    System.out.println(totalPrice);
//                }
//
//                ResultSet rs_electronic = db.getData(sql_electronic);
//                while (rs_electronic.next()) {
//                    totalPrice = totalPrice + rs_electronic.getInt("price");
//                    System.out.println(totalPrice);
//                }
//
//                ResultSet rs_kitchen = db.getData(sql_kitchen);
//                while (rs_kitchen.next()) {
//                    totalPrice = totalPrice + rs_kitchen.getInt("price");
//                    System.out.println(totalPrice);
//                }
//                
//                ResultSet rs_gamevoucher = db.getData(sql_gamevoucher);
//                while (rs_gamevoucher.next()) {
//                    totalPrice = totalPrice + rs_gamevoucher.getInt("price");
//                    System.out.println(totalPrice);
//                }
//                
//                ResultSet rs_pcgamingaccessories = db.getData(sql_pcgamingaccessories);
//                while (rs_pcgamingaccessories.next()) {
//                    totalPrice = totalPrice + rs_pcgamingaccessories.getInt("price");
//                    System.out.println(totalPrice);
//                }
//            }
            for (int i = 0; i < arrListProd.size(); i++) {
                totalPrice += arrListProd.get(i).getPrice();
                System.out.println(arrListProd.get(i).getPrice());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return totalPrice;
    }
    
    public int countItem(javax.swing.JList<String> jList_cart) {
        return jList_cart.getModel().getSize();
    }
}
