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
public class User {
   
  String id;
  String name;
  String email;
  String phone;
  String pw;

    public String getid() {
        return id;
    }

    public String getname() {
        return name;
    }
       public String getphone() {
        return phone;
    }

    public String getemail() {
        return email;
    }
     public String getpw() {
        return pw;
    }

    public void setid(String id) {
        this.id = id;
    }

    public void setname(String name) {
        this.name = name;
    }
     public void setphone(String phone) {
        this.phone = phone;
    }

    public void setemail(String email) {
        this.email= email;
    }
    public void setpw(String pw) {
        this.pw= pw;
    }

   

   
  
    
}


