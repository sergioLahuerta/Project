package Model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AlergenoDao implements iDao {
    private final String SQL_FIND = "SELECT * from ALLERGENS WHERE 1=1";
    private IMotorSql motorSql;

    public AlergenoDao() {
        motorSql = new MotorMySql();

    }

    @Override
    public int add(Object bean) {
        return 0;
    }

    @Override
    public int delete(Object e) {
        return 0;
    }

    @Override
    public int update(Object bean) {
        return 0;
    }

    @Override
    public ArrayList findAll(Object bean) {
        ArrayList<Alergeno> alergenos = new ArrayList<Alergeno>();
        String sql = SQL_FIND;
        try {
            motorSql.connect();

            if (bean != null) {
                Alergeno alergeno = (Alergeno) bean;

                if (Alergeno.getM_iId() != 0) {
                    sql += " AND ALLERGEN_ID ='" + alergeno.getM_iId() + "'";
                }
                if (alergeno.getM_strName() != "") {
                    sql += " AND NAME ='" + alergeno.getM_strName() + "'";
                }
                if (alergeno.getM_strDescription() != "") {
                    sql += " AND DESCRIPTION ='" + alergeno.getM_strDescription() + "'";
                }
            }

            ResultSet rs = motorSql.executeQuery(sql);
            while (rs.next()) {
                Alergeno alergenoBd = new Alergeno();
                alergenoBd.setM_iId(rs.getInt("ALLERGEN_ID"));
                alergenoBd.setM_strName(rs.getString("NAME"));
                alergenoBd.setM_strDescription(rs.getString("DESCRIPTION"));
                alergenos.add(alergenoBd);


            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return null;
    }

}
