package Controller;

import Controller.Actions.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class Controller extends HttpServlet {
    //Vamos a procesar la peticion ?ACTION=PELICULA.FIND=_ALL
    private void processRequest(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String action = req.getParameter("ACTION"); //PELICULA.FIND_ALL
        String[] arrayAction = new String[2];
        PrintWriter out = resp.getWriter();
        if (action != ""){
            arrayAction = action.split("\\.");
        }
        switch (arrayAction[0].toUpperCase()){
            case "PELICULA": {
                out.print(new PeliculaAction().execute(req, resp, arrayAction[1]));

                break;
            }
            default: {
                throw new ServletException("Accion"+ action + "no valida");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
        processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
