package kz.javaee.project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(value = "/addCar")
public class AddCarsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/addCar.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String redirect = "/addCar?error";
        String photo = req.getParameter("photo");
        String brand = req.getParameter("brand");
        String model = req.getParameter("model");
        int year = Integer.parseInt(req.getParameter("year"));
        String color = req.getParameter("color");
        float engineVolume = Float.parseFloat(req.getParameter("engineVolume"));


        Car car = new Car();
        car.setPhoto(photo);
        car.setBrand(brand);
        car.setModel(model);
        car.setYear(year);
        car.setColor(color);
        car.setEngineVolume(engineVolume);


        if (DBmanager.addCar(car)) {
            redirect = "/homeCars";
        }
        resp.sendRedirect(redirect);
    }
}
