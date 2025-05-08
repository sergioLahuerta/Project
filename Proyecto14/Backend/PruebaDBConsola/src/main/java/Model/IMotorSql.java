package Model;

import java.sql.ResultSet;

public interface IMotorSql {
    public void connect();
    public int execute(String sql);
    public ResultSet executeQuery(String sql);
    public void disconnect();
}
