package org.example;


import model.*;

import java.sql.ResultSet;
import java.util.ArrayList;

public class Main {

        public static void main(String args[]){
            IMotorSql motorSql = new MotorSql();
            motorSql.connect();
            String sqlQuery = "SELECT * FROM productos";
            ResultSet rs = motorSql.executeQuery(sqlQuery);
            ProductoDao pro = new ProductoDao();
            ArrayList<Producto> productos = pro.FindAll(null);
            if (productos.isEmpty()) {
                System.out.println("no hay productos en la base de datos");

            }else {
                for (Producto p : productos) {
                    System.out.println(p);
                }
            }
        }
    }
