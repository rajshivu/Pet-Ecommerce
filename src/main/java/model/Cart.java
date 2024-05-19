/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author BSIL
 */
public class Cart {
     String c_id;
  String c_image;
  String c_name;
  String c_cost;
String total;

    public String getc_id() {
        return c_id;
    }

    public String getc_image() {
        return c_image;
    }
       public String getc_name() {
        return c_name;
    }

    public String getc_cost() {
        return c_cost;
    }
  
    

    public void setc_id(String c_id) {
        this.c_id = c_id;
    }
public void setc_image(String c_image) {
        this.c_image = c_image;
    }
    public void setc_name(String c_name) {
        this.c_name = c_name;
    }
     
    public void setc_cost(String c_cost) {
        this.c_cost= c_cost;
    }
   

//    public void settotal(String total) {
//        this.total = total;
//    }

   
  
    
}


