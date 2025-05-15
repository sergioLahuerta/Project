package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ReseñaDao implements iDao {
    private final String SQL_FIND = "SELECT * FROM valoraciones WHERE 1=1 ";
    private IMotorSql motorSql;

    public ReseñaDao() {
        motorSql = new MotorSql();
    }

    @Override
    public int add(Object bean) {
        Reseña reseña = (Reseña) bean;
        String sql = "INSERT INTO valoraciones (id_cliente, id_producto, puntuacion, comentario) VALUES (" +
                reseña.getId_cliente() + ", " +
                reseña.getId_producto() + ", " +
                reseña.getPuntuacion() + ", '" +
                reseña.getComentario() + "')";
        motorSql.connect();
        return motorSql.executeUpdate(sql);
    }

    @Override
    public int delete(Object bean) {
        Reseña reseña = (Reseña) bean;
        String sql = "DELETE FROM valoraciones WHERE id_valoracion = " + reseña.getId_valoracion();
        motorSql.connect();
        return motorSql.executeUpdate(sql);
    }

    @Override
    public int update(Object bean) {
        Reseña reseña = (Reseña) bean;
        String sql = "UPDATE valoraciones SET " +
                "id_cliente = " + reseña.getId_cliente() + ", " +
                "id_producto = " + reseña.getId_producto() + ", " +
                "puntuacion = " + reseña.getPuntuacion() + ", " +
                "comentario = '" + reseña.getComentario() + "' " +
                "WHERE id_valoracion = " + reseña.getId_valoracion();
        motorSql.connect();
        return motorSql.executeUpdate(sql);
    }

    @Override
    public ArrayList<Reseña> FindAll(Object bean) {
        ArrayList<Reseña> valoraciones = new ArrayList<>();
        String sql = SQL_FIND;

        try {
            motorSql.connect();

            if (bean != null) {
                Reseña v = (Reseña) bean;
                if (v.getId_valoracion() > 0) {
                    sql += " AND id_valoracion = " + v.getId_valoracion();
                }
                if (v.getId_cliente() > 0) {
                    sql += " AND id_cliente = " + v.getId_cliente();
                }
                if (v.getId_producto() > 0) {
                    sql += " AND id_producto = " + v.getId_producto();
                }
                if (v.getPuntuacion() > 0) {
                    sql += " AND puntuacion = " + v.getPuntuacion();
                }
            }

            ResultSet rs = motorSql.executeQuery(sql);
            while (rs.next()) {
                Reseña v = new Reseña();
                v.setId_valoracion(rs.getInt("id_valoracion"));
                v.setId_cliente(rs.getInt("id_cliente"));
                v.setId_producto(rs.getInt("id_producto"));
                v.setPuntuacion(rs.getInt("puntuacion"));
                v.setComentario(rs.getString("comentario"));
                v.setFecha_valoracion(rs.getTimestamp("fecha_valoracion"));

                valoraciones.add(v);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return valoraciones;
    }
}

