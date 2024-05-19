/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

/**
 *
 * @author BSIL
 */
public class Registration1 {

	Connection con;
	Statement st;
	ResultSet rs;
	ResultSet rs1;
	HttpSession se;

	public Registration1(HttpSession session) {
		try {

			Class.forName("com.mysql.jdbc.Driver"); // load the drivers
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pethub", "root", "Tiger");
			// connection with data base
			se = session;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String Registration(String name, String phone, String email, String pw) {
		PreparedStatement ps;
		String status = "";
		try {
			st = con.createStatement();
			rs = st.executeQuery("select * from userdata where phone='" + phone + "' or email='" + email + "';");
			boolean b = rs.next();
			if (b) {
				status = "existed";
			} else {
				ps = (PreparedStatement) con.prepareStatement("insert into userdata values(0,?,?,?,?,now())");
				ps.setString(1, name);
				ps.setString(2, phone);
				ps.setString(3, email);
				ps.setString(4, pw);
				int a = ps.executeUpdate();
				if (a > 0) {
					status = "success";
				} else {
					status = "failure";
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String login(String email, String pass, HttpSession se1) {
		String status1 = "";
		try {
			se = se1;
			String name = "";
			String id = "";
			Statement st = null;
			ResultSet rs = null;
			st = con.createStatement();
			rs = st.executeQuery("select * from userdata where email='" + email + "' and pw='" + pass + "';");
			boolean b = rs.next();
			if (b == true) {
				name = rs.getString("name");
				id = rs.getString("id");
				se.setAttribute("id", id);
				se.setAttribute("name", name);
				status1 = "success";
			} else {
				status1 = "failure";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status1;
	}

	public String adminlogin(String email, String pass, HttpSession se1) {
		String status1 = "";
		try {
			se = se1;

			String name = "";
			Statement st = null;
			ResultSet rs = null;
			st = con.createStatement();
			rs = st.executeQuery("select * from admin where admin_email='admin@gmail.com' and admin_pw='admin123';");
			boolean b = rs.next();
			if (b == true) {
//                name = rs.getString("name");
//                se.setAttribute("name", name);
				status1 = "success";
			} else {
				status1 = "failure";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return status1;
	}

	public ArrayList<User> getuserdata() {
		ArrayList<User> al = new ArrayList<User>();
		try {
			st = con.createStatement();
			String qry = "select * from userdata;";
//           System.out.println(qry);
			rs = st.executeQuery(qry);
			while (rs.next()) {
				User p = new User();
				p.setid(rs.getString("id"));
				p.setname(rs.getString("name"));
				p.setphone(rs.getString("phone"));
				p.setemail(rs.getString("email"));
				p.setpw(rs.getString("pw"));
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<adminOrder> getorderdata() {
		ArrayList<adminOrder> al = new ArrayList<adminOrder>();
		try {
			st = con.createStatement();
			String qry = "select * from orders;";
//           System.out.println(qry);
			rs = st.executeQuery(qry);
			while (rs.next()) {
				adminOrder p = new adminOrder();
				p.setusname(rs.getString("usname"));
				p.setc_id(rs.getString("c_id"));
				p.setc_cost(rs.getString("c_cost"));
				p.setorder_address(rs.getString("order_address"));
				p.setorder_city(rs.getString("order_city"));
				p.setorder_state(rs.getString("order_state"));
				p.setstatus(rs.getString("status"));
				al.add(p);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Dproduct> get_productinfo(String animal) {
		ArrayList<Dproduct> al = new ArrayList<Dproduct>();
		try {
			st = con.createStatement();
			String qry = "select * from products where p_catagory='" + animal + "';";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Dproduct p = new Dproduct();
				p.setp_id(rs.getString("p_id"));
				p.setp_image(rs.getString("p_image"));
				p.setp_name(rs.getString("p_name"));
				p.setp_cost(rs.getString("p_cost"));
				p.setp_details(rs.getString("p_details"));
				al.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Dproduct> getc_productinfo() {
		ArrayList<Dproduct> al = new ArrayList<Dproduct>();
		try {
			st = con.createStatement();
			String qry = "select * from products where p_catagory='cat';";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Dproduct p = new Dproduct();
				p.setp_id(rs.getString("p_id"));
				p.setp_image(rs.getString("p_image"));
				p.setp_name(rs.getString("p_name"));
				p.setp_cost(rs.getString("p_cost"));
				p.setp_details(rs.getString("p_details"));
				al.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Dproduct> getd_productinfo() {
		ArrayList<Dproduct> al = new ArrayList<Dproduct>();
		try {
			st = con.createStatement();
			String qry = "select * from products where p_catagory='dog';";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Dproduct p = new Dproduct();
				p.setp_id(rs.getString("p_id"));
				p.setp_image(rs.getString("p_image"));
				p.setp_name(rs.getString("p_name"));
				p.setp_cost(rs.getString("p_cost"));
				p.setp_details(rs.getString("p_details"));
				al.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Dproduct> getb_productinfo() {
		ArrayList<Dproduct> al = new ArrayList<Dproduct>();
		try {
			st = con.createStatement();
			String qry = "select * from products where p_catagory='bird';";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Dproduct p = new Dproduct();
				p.setp_id(rs.getString("p_id"));
				p.setp_image(rs.getString("p_image"));
				p.setp_name(rs.getString("p_name"));
				p.setp_cost(rs.getString("p_cost"));
				p.setp_details(rs.getString("p_details"));
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Dproduct> getd_productinfo(String id) {
		ArrayList<Dproduct> al = new ArrayList<Dproduct>();
		try {
			st = con.createStatement();
			String qry = ("select * from products where p_id='" + id + "';");
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Dproduct p = new Dproduct();
				p.setp_id(rs.getString("p_id"));
				p.setp_image(rs.getString("p_image"));
				p.setp_name(rs.getString("p_name"));
				p.setp_cost(rs.getString("p_cost"));
				p.setp_details(rs.getString("p_details"));
				al.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Dproduct> getd_productinfo1() {
		ArrayList<Dproduct> al = new ArrayList<Dproduct>();
		try {
			st = con.createStatement();
			String qry = ("select * from products ");
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Dproduct p = new Dproduct();
				p.setp_id(rs.getString("p_id"));
				p.setp_image(rs.getString("p_image"));
				p.setp_name(rs.getString("p_name"));
				p.setp_cost(rs.getString("p_cost"));
				p.setp_details(rs.getString("p_details"));
				al.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Contacted> getcontactinfo() {
		ArrayList<Contacted> al = new ArrayList<Contacted>();
		try {
			st = con.createStatement();
			String qry = ("select * from contact;");
//           System.out.println(qry);
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Contacted p = new Contacted();
				p.setc_no(rs.getString("c_no"));
				p.setname(rs.getString("name"));
				p.setemail(rs.getString("email"));
				p.setmsg(rs.getString("msg"));

				al.add(p);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Cart> getcartinfo() {
		ArrayList<Cart> al = new ArrayList<Cart>();
		try {
			st = con.createStatement();
			String qry = ("select *  from cart where uid=" + se.getAttribute("id") + " and status='pending';");
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Cart p = new Cart();
				p.setc_id(rs.getString("c_id"));
				p.setc_image(rs.getString("c_image"));
				p.setc_name(rs.getString("c_name"));
				p.setc_cost(rs.getString("c_cost"));
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Order> getorderinfo() {
		ArrayList<Order> al = new ArrayList<Order>();
		try {
			st = con.createStatement();
			String qry = "select *  from orders where uid='" + se.getAttribute("id") + "';";
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Order p = new Order();
				p.setoid(rs.getInt("order_id"));
//                p.setc_cost(rs.getString("c_cost"));
//                p.setc_id(rs.getString("c_id"));
				p.setstatus(rs.getString("status"));
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public ArrayList<Order> getorderinfocart(int oid) {
		ArrayList<Order> al = new ArrayList<Order>();
		try {
			st = con.createStatement();
			String qry = ("select *  from cart where uid='" + se.getAttribute("id") + "' and order_id = '" + oid
					+ "';");
			rs = st.executeQuery(qry);
			while (rs.next()) {
				Order p = new Order();
				p.setoid(rs.getInt("order_id"));
				p.setc_cost(rs.getString("c_cost"));
				p.setp_image(rs.getString("c_image"));
				p.setc_name(rs.getString("c_name"));
				al.add(p);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return al;
	}

	public String addtocart(String p_id) {
		String status = "";
		try {
			Statement st = null;
			st = (Statement) con.createStatement();
			String qry = "insert into cart select 0,p_image,p_name,p_cost,'" + se.getAttribute("name") + "',"
					+ se.getAttribute("id") + ",0,'pending' from products where p_id=" + p_id + ";";
			int a = st.executeUpdate(qry);
			status = "success";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public int deletecart(int c_id) {
		int status = 0;
		try {
			Statement st = null;
			st = (Statement) con.createStatement();
			String qry = "update cart set status='deleted' where c_id='" + c_id + "'";
			status = st.executeUpdate(qry);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public int deleteproduct(int c_id) {
		int status = 0;
		try {
			Statement st = null;
			st = (Statement) con.createStatement();
			String qry = "delete from products where p_id='" + c_id + "'";
			status = st.executeUpdate(qry);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public int deleteorder(int oid) {
		int status = 0;
		try {
			Statement st = null;
			st = (Statement) con.createStatement();
			String qry = "update orders set status='Canceled' where order_id='" + oid + "'";
			status = st.executeUpdate(qry);
			String qry1 = "update cart set status='Canceled' where order_id='" + oid + "'";
			status = st.executeUpdate(qry1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String contactus(String name, String email, String msg) {
		PreparedStatement ps;
		String status = "";
		try {
			st = con.createStatement();

//            boolean b = rs.next();
//            if (b) {
//                status = "existed";
//            } else {
			ps = (PreparedStatement) con.prepareStatement("insert into contact values(0,?,?,?,now())");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, msg);

			int a = ps.executeUpdate();
			if (a > 0) {
				status = "success";
			} else {
				status = "failure";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String addproducts(String image, String name, String cost, String detail, String catagory) {
		PreparedStatement ps;
		String status = "";
		try {
			st = con.createStatement();

			ps = (PreparedStatement) con.prepareStatement("insert into products values(0,?,?,?,?,?)");
			ps.setString(1, image);
			ps.setString(2, name);
			ps.setString(3, cost);
			ps.setString(4, detail);
			ps.setString(5, catagory);

			int a = ps.executeUpdate();
			if (a > 0) {
				status = "success";
			} else {
				status = "failure";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String orderdetails(String order_address, String order_city, String order_state, String tcost) {
		String status = "", c_id = "";
		int order_id = 0;
		try {
			Statement st = null;
			PreparedStatement ps;
			st = (Statement) con.createStatement();
			ps = (PreparedStatement) con.prepareStatement("insert into orders select 0,?, ?, ?,group_concat(c_id),'"
					+ tcost + "','" + se.getAttribute("name") + "','ordered',now()," + se.getAttribute("id")
					+ " from cart where uid= " + se.getAttribute("id") + " and status='pending';");
			ps.setString(1, order_address);
			ps.setString(2, order_city);
			ps.setString(3, order_state);
			int a = ps.executeUpdate();
			if (a > 0) {
				status = "success";
			} else {
				status = "failure";
			} // last order of my id with status=ordered,
			String qry1 = "select order_id,c_id from orders where uid=" + se.getAttribute("id")
					+ " and status='ordered' order by order_id desc limit 1;";
			rs = st.executeQuery(qry1);
			while (rs.next()) {
				order_id = rs.getInt("order_id");
				c_id = rs.getString("c_id");
			}
			String qry = "update cart set status='ordered',order_id='" + order_id + "' where c_id in (" + c_id
					+ ") and uid=" + se.getAttribute("id") + " and status='pending';";
			int b = st.executeUpdate(qry);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return status;
	}

	public String delete(int id) {
		int count = 0;
		Statement st = null;
		ResultSet rs = null;
		String status = "";
		try {
			st = con.createStatement();
			count = st.executeUpdate("delete from cart where c_id='" + id + "'");
			if (count > 0) {
				status = "success";
			} else {
				status = "failure";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public String delete_id(int id) {
		int count = 0;
		Statement st = null;
		ResultSet rs = null;
		String status = "";
		try {
			st = con.createStatement();
			count = st.executeUpdate("delete from userdata where id='" + id + "'");
			if (count > 0) {
				status = "success";
			} else {
				status = "failure";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}
}
