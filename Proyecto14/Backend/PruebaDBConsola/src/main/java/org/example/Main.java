package org.example;

import Model.Alergeno;
import Model.AlergenoDao;

import java.util.ArrayList;

public class Main {
    public static void main(String args[])
    {
        AlergenoDao aler = new AlergenoDao();
        ArrayList<Alergeno> alergenos = new ArrayList<>();
        alergenos = aler.findAll(null);
        alergenos = aler.findAll(new Alergeno());

        alergenos.toString();
    }
}