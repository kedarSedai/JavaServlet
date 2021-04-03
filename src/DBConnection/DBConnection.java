package DBConnection;

import java.sql.*;

/**
 * Created by kedar on 3/29/2021.
 */
public class DBConnection {

    Connection con = null;

    public DBConnection() {
        try {

            //load the Driver
            Class.forName("com.mysql.jdbc.Driver");
            String DB_URL = "jdbc:mysql://localhost:3306/student";
            String name = "root";
            String password = "root";

            //Establish Connection
            con = DriverManager.getConnection(DB_URL, name, password);

            System.out.println("Database Connected !!! ");


        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        DBConnection dbConnection = new DBConnection();
    }

    public PreparedStatement getStatement(String query) {

        PreparedStatement pstm = null;

        try {
            pstm = con.prepareStatement(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pstm;
    }
}

