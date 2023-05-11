package kz.javaee.project;

import kz.baibalaeva.javaEE.DBManager;
import kz.baibalaeva.javaEE.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/edit1")
public class EditCarServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/edit1.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect = "/edit1?error";
        Long id = Long.valueOf(req.getParameter("id"));
        String photo = req.getParameter("photo");
        String brand = req.getParameter("brand");
        String model = req.getParameter("model");
        int year = Integer.parseInt(req.getParameter("year"));
        String color = req.getHeader("color");
        Float enginevolume = Float.valueOf(req.getParameter("enginevolume"));

        Car car = new Car();
        car.setId(id);
        car.setPhoto(photo);
        car.setBrand(brand);
        car.setModel(model);
        car.setYear(year);
        car.setColor(color);
        car.setEngineVolume(enginevolume);

        if (DBmanager.updateCars(car)){
            redirect="/homeCars";
        }
        resp.sendRedirect(redirect);
    }
}
