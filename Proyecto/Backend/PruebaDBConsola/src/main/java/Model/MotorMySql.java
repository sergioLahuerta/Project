package Model;

import java.sql.*;

public class MotorMySql implements IMotorSql{

    private static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
    private static final String MYSQL_URL = "jdbc:mysql://localhost:3306/test";
    private static final String MYSQL_USER = "root";
    private static final String MYSQL_PASS = "Aa12021888.";
    private Connection m_conn;
    private Statement m_stmt;
    private ResultSet m_ResultSet;
    @Override
    public void connect() {
        try{
        Class.forName(DRIVER_NAME);
        m_conn = DriverManager.getConnection(MYSQL_URL, MYSQL_USER, MYSQL_PASS);
        }
        catch (ClassNotFoundException e){
            throw new RuntimeException(e);

        }
        catch (SQLException sqlEX){
            System.out.println(sqlEX.getMessage());
        }
    }

    @Override
    public int execute(String sql) {
        return 0;
    }

    @Override
    public ResultSet executeQuery(String sql) {
        return null;
    }

    @Override
    public void disconnect() {

    }
}
