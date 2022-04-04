package com.example.banhang.dao;
import com.example.banhang.connection.connectionjdbc;
import com.example.banhang.entity.Account;
import com.example.banhang.entity.Category;
import com.example.banhang.entity.Product;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Dao {
    // get all Product from db
    public static List<Product> getAllProduct() throws ClassNotFoundException {
        List<Product> list = new ArrayList<Product>();
        Connection conn = connectionjdbc.getjdbcconnection();

        // Step 2:Create a statement using connection object
        try {
            String sql = "select * from Product";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            {
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getInt(5),rs.getString(6),rs.getString(7)));

                }
            }

        } catch (Exception e) {

        }
        return list;
    }

    // get allProduct by categoryID
    public static List<Product> getAllProductByID(String cid) throws ClassNotFoundException {
        List<Product> list = new ArrayList<Product>();
        Connection conn = connectionjdbc.getjdbcconnection();
        String sql = "select * from data.Product where categoryid = ?";
        // Step 2:Create a statement using connection object
        try {

            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, cid);
            {
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getInt(5),rs.getString(6),rs.getString(7)));
                }
            }

        } catch (Exception e) {

        }
        return list;
    }

    // get Product by ID
    public static Product getProductByID(String id) throws ClassNotFoundException {

        Connection conn = connectionjdbc.getjdbcconnection();
        String sql = "select * from data.Product where id = ?";
        // Step 2:Create a statement using connection object
        try {

            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, id);
            {
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    Product p1=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getInt(5),rs.getString(6),rs.getString(7));

                    return p1;
                }

            }

        } catch (Exception e) {

        }
        return null;
    }

    // get Product by name
    public static List<Product> getProductByName(String name) throws ClassNotFoundException {
        List<Product> list = new ArrayList<Product>();
        Connection conn = connectionjdbc.getjdbcconnection();
        String sql = "select * from data.Product where pname like ?";
        // Step 2:Create a statement using connection object
        try {

            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            preparedStatement.setString(1, "%" + name + "%");
            {
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getInt(5),rs.getString(6),rs.getString(7)));
                }
            }

        } catch (Exception e) {

        }
        return list;
    }

    // get all category
    public static List<Category> getAllcategory() throws ClassNotFoundException {
        List<Category> list = new ArrayList<Category>();
        Connection conn = connectionjdbc.getjdbcconnection();

        // Step 2:Create a statement using connection object
        try {
            String sql = "select * from category";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            {
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    Category c1 = new Category();
                    c1.setCid(rs.getInt(1));
                    c1.setCname(rs.getString(2));

                    System.out.println(rs.getString("cid") + " " + rs.getString("cname"));
                    list.add(c1);

                }
            }

        } catch (Exception e) {

        }
        return list;
    }

    //arrange Product by popular
    public static List<Product> getPopular() {
        List<Product> list = new ArrayList<Product>();
        Connection conn = connectionjdbc.getjdbcconnection();

        // Step 2:Create a statement using connection object
        try {
            String sql = "SELECT * FROM Product \r\n"
                    + "ORDER BY pname desc";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            {
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getInt(5),rs.getString(6),rs.getString(7)));

                }
            }

        } catch (Exception e) {

        }
        return list;
    }

    //arrange Product by new
    public static List<Product> getNewest() {
        List<Product> list = new ArrayList<Product>();
        Connection conn = connectionjdbc.getjdbcconnection();

        // Step 2:Create a statement using connection object
        try {
            String sql = "SELECT * FROM Product \r\n"
                    + "ORDER BY id desc";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            {
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getInt(5),rs.getString(6),rs.getString(7)));

                }
            }

        } catch (Exception e) {

        }
        return list;
    }

    //arrange Product by best sold out

    public static List<Product> getBestSoldOut() {
        List<Product> list = new ArrayList<Product>();
        Connection conn = connectionjdbc.getjdbcconnection();

        // Step 2:Create a statement using connection object
        try {
            String sql = "SELECT * FROM Product \r\n"
                    + "ORDER BY title desc";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            {
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getInt(5),rs.getString(6),rs.getString(7)));

                }
            }

        } catch (Exception e) {

        }
        return list;
    }


    //arrange Product by descending price
    public static List<Product> getDescendingPrice() {
        List<Product> list = new ArrayList<Product>();
        Connection conn = connectionjdbc.getjdbcconnection();

        // Step 2:Create a statement using connection object
        try {
            String sql = "SELECT * FROM Product \r\n"
                    + "ORDER BY price desc";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            {
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getInt(5),rs.getString(6),rs.getString(7)));

                }
            }

        } catch (Exception e) {

        }
        return list;
    }

    //arrange Product by ascending price
    public static List<Product> getAscendingPrice() {
        List<Product> list = new ArrayList<Product>();
        Connection conn = connectionjdbc.getjdbcconnection();

        // Step 2:Create a statement using connection object
        try {
            String sql = "SELECT * FROM Product \r\n"
                    + "ORDER BY price asc";
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            {
                ResultSet rs = preparedStatement.executeQuery();
                while (rs.next()) {
                    list.add(new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getInt(5),rs.getString(6),rs.getString(7)));

                }
            }

        } catch (Exception e) {

        }
        return list;
    }


    // validate a account from user
    public boolean validate(Account a) throws ClassNotFoundException {
        boolean status = false;

        Connection conn = connectionjdbc.getjdbcconnection();
        String sql = "select * from account where username = ? and password = ? ";
        // Step 2:Create a statement using connection object
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            {
                preparedStatement.setString(1, a.getUsername());
                preparedStatement.setString(2, a.getPassword());

                ResultSet rs = preparedStatement.executeQuery();
                status = rs.next();

            }
        } catch (SQLException e) {
            // process sql exception

        }
        return status;
    }

    // check username existance in db
    public boolean Check(String username) throws ClassNotFoundException {
        boolean status = false;

        Connection conn = connectionjdbc.getjdbcconnection();
        String sql = "select * from account where username = ? ";
        // Step 2:Create a statement using connection object
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            {
                preparedStatement.setString(1, username);

                ResultSet rs = preparedStatement.executeQuery();
                status = rs.next();

            }
        } catch (SQLException e) {
            // process sql exception

        }
        return status;
    }

    // insert a account to db
    public static void Insert(String username, String password) {

        Connection conn = connectionjdbc.getjdbcconnection();
        String sql = "Insert into account(username,password) values(?,?)";
        try {
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            statement.executeUpdate();

        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    public static void main(String[] args) throws ClassNotFoundException {
        // getAllProduct();
        // getAllcategory();
        // getAllProductByID("2");
        // getProductByID("18");
//System.out.println(getProductByName("giày"));
    }

//	}

}
