package Service;

import DBConnection.DBConnection;
import Model.User;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kedar on 3/30/2021.
 */
public class UserService {


    public User getUser(String username, String password) {

        User user = null;
        String query = "select * from user where userName=? and password=?";

        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setString(1, username);
            pstm.setString(2, password);

            ResultSet rs = pstm.executeQuery();

            while (rs.next()) {
                user = new User();
                user.setId(rs.getInt("id"));
                user.setFull_name(rs.getString("full_name"));
                user.setUsername(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));

                System.out.println(user.getUsername() + " " + user.getPassword());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }

    public List<User> getUserList() {
        List<User> userList = new ArrayList<>();
        String query = "select * from user";
        System.out.println(query);
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                User user = new User();

                user.setId(rs.getInt("id"));
                user.setFull_name(rs.getString("full_name"));
                user.setUsername(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));

                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }

    public void insertUser(User user) {
        String query = "insert into user (full_name,username,password,role)" +
                "values(?,?,?,?)";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            pstm.setString(1, user.getFull_name());
            pstm.setString(2, user.getUsername());
            pstm.setString(3, user.getPassword());
            pstm.setString(4, user.getRole());

            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteUser(int id) {
        String query = "delete from user where id=?";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            pstm.setInt(1, id);
            pstm.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public User getUserRow(int id){
        User user = new User();
        String query = "select * from user where id=?";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            pstm.setInt(1,id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                user.setId(rs.getInt("id"));
                user.setFull_name(rs.getString("full_name"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setRole(rs.getString("role"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return user;
    }
    public void editUser(int id, User user) throws SQLException {

        String query = "update user set full_name=?,userName=?,password=?," +
                "role=? where id=?";
        PreparedStatement pstm = new DBConnection().getStatement(query);
        pstm.setString(1, user.getFull_name());
        pstm.setString(2, user.getUsername());
        pstm.setString(3, user.getPassword());
        pstm.setString(4, user.getRole());
        pstm.setInt(5, id);

        pstm.execute();
    }
}
