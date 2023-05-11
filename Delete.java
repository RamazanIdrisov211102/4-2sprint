package kz.javaee.project;

import kz.baibalaeva.javaEE.DBManager;
import kz.baibalaeva.javaEE.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/delete1")
public class Delete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String red= "/delete1?error";
        Long id = Long.valueOf(req.getParameter("id"));
        if(DBmanager.deleteCars(id)){
            red= "/homeCars";
        }
        resp.sendRedirect(red);
    }
}
