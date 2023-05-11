package kz.javaee.project;

public class Car {
    private long id;
    private String photo;
    private String brand;
    private String model;
    private int year;
    private String color;
    private float engineVolume;



    public Car( String photo,String brand, String model, int year, String color, float engineVolume) {
        this.photo=photo;
        this.brand = brand;
        this.model = model;
        this.year = year;
        this.color = color;
        this.engineVolume = engineVolume;

    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Car() {
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int  year) {
        this.year = year;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public float getEngineVolume() {
        return engineVolume;
    }

    public void setEngineVolume(float engineVolume) {
        this.engineVolume = engineVolume;
    }

    public void getName() {
    }

    @Override
    public String
    toString() {
        return "Car " +  "photo"+
                "brand='" + brand + '\'' +
                ", model='" + model + '\'' +
                ", year=" + year +
                ", color='" + color + '\'' +
                ", engineVolume=" + engineVolume +
                '}';
    }
}

