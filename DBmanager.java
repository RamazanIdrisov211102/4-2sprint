package kz.javaee.project;

import kz.baibalaeva.javaEE.Student;

import java.sql.*;
import java.util.ArrayList;

public class DBmanager {


    private static Connection connection;
    static{
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        try {
            connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/shop","postgres","qwerty123");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    public static boolean addCar(Car car) {
        int rows = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement("insert into cars(photo,brand,model,year,color,engineVolume) " +
                    " values(?,?,?,?,?,?)");
            stmt.setString(1, car.getPhoto());
            stmt.setString(2, car.getBrand());
            stmt.setString(3,car.getModel());
            stmt.setInt(4, car.getYear());
            stmt.setString(5, car.getColor());
            stmt.setFloat(6, car.getEngineVolume());

            rows = stmt.executeUpdate();
            stmt.close();

        } catch (Exception e) {

            throw new RuntimeException(e);
        }
        return rows>0;
    }


    public static boolean addUser(User user) {
        int rows = 0;
        try {
            PreparedStatement stmt = connection.prepareStatement("insert into forusers(name,surname,phonenumber) " +
                    "values(?,?,?)");
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getSurname());
            stmt.setLong(3, Long.parseLong(user.getPhone()));

            rows = stmt.executeUpdate();
            stmt.close();

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
        return rows>0;
    }

    public static ArrayList<Car> getAllCars(){
        ArrayList<Car> list = new ArrayList<>();
        try {
            PreparedStatement stmt = connection.prepareStatement("select * from cars");
            ResultSet resultSet = stmt.executeQuery();
            while(resultSet.next()){
                Car car = new Car();
                car.setId(resultSet.getLong("id"));
                car.setPhoto(resultSet.getString("photo"));
                car.setBrand(resultSet.getString("brand"));
                car.setModel(resultSet.getString("model"));
                car.setYear(resultSet.getInt("year"));
                car.setColor(resultSet.getString("color"));
                car.setEngineVolume(resultSet.getFloat("enginevolume"));
                list.add(car);
            }
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return list;
    }



    public static Car getCars(Long id){
        Car car = null;
        try {
            PreparedStatement stmt = connection.prepareStatement("select * from cars " +
                    "where id = ?");
            stmt.setLong(1, id);
            ResultSet resultSet = stmt.executeQuery();
            if(resultSet.next()){
                car = new Car();
                car.setId(resultSet.getLong("id"));
                car.setPhoto(resultSet.getString("photo"));
                car.setBrand(resultSet.getString("brand"));
                car.setModel(resultSet.getString("model"));
                car.setYear(resultSet.getInt("year"));
                car.setColor(resultSet.getString("color"));
                car.setEngineVolume(resultSet.getFloat("enginevolume"));

            }
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return car;

    }

    public static boolean updateCars(Car car){
        int rows=0;
        try {
            PreparedStatement stmt = connection.prepareStatement("update cars set photo=?, brand=?, model=?, year=?, color=?, enginevolume=?  " +
                    "where id=?");
            stmt.setString(1, car.getPhoto());
            stmt.setString(2, car.getBrand());
            stmt.setString(3, car.getModel());
            stmt.setInt(4, car.getYear());
            stmt.setString(5, car.getColor());
            stmt.setFloat(6, car.getEngineVolume());
            stmt.setLong(7, car.getId());
            rows = stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rows>0;
    }

    public static boolean deleteCars(Long id){
        int rows=0;
        try {
            PreparedStatement stmt = connection.prepareStatement("delete from cars  " +
                    "where id=?");
            stmt.setLong(1, id);
            rows=stmt.executeUpdate();
            stmt.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return rows>0;
    }




}
