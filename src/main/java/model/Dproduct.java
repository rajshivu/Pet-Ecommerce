
package model;

public class Dproduct {
      String p_id;
  String p_name;
  String p_image;
  String p_cost;
  String p_details;

    public String getp_id() {
        return p_id;
    }

    public String getp_image() {
        return p_image;
    }
       public String getp_name() {
        return p_name;
    }

    public String getp_cost() {
        return p_cost;
    }
     public String getp_details() {
        return p_details;
    }

    public void setp_id(String p_id) {
        this.p_id = p_id;
    }

    public void setp_image(String p_image) {
        this.p_image = p_image;
    }
     public void setp_name(String p_name) {
        this.p_name = p_name;
    }

    public void setp_cost(String p_cost) {
        this.p_cost= p_cost;
    }
    public void setp_details(String p_details) {
        this.p_details= p_details;
    }
}
    

