package kz.javaee.project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(value ="/AddUser")
public class AddUserservlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/AddUser.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect = "/AddUser?error";
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        Long phone = Long.valueOf(req.getParameter("phoneNumber"));


        User user = new User();
        user.setName(name);
        user.setSurname(surname);
        user.setPhone(String.valueOf(phone));

        if (DBmanager.addUser(user)){
            redirect = "/homeCars";
        }
        resp.sendRedirect(redirect);
    }
}
