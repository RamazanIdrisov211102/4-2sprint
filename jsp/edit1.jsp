<%@ page import="kz.baibalaeva.project.Car" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23.11.2022
  Time: 17:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit page</title>
<style>
    .mainDiv{
        background-color: burlywood;
    }
</style>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</head>
<body>
<div class="mainDiv">

    <%
        Car car = (Car) request.getSession().getAttribute("car");

    %>
    <form action="/edit1" method="post">
        <div class="mb-3">
            <label for="exampleInputId" class="form-label"></label>
            <input type="hidden" class="form-control" id="exampleInputId" aria-describedby="emailHelp" value="<%=car.getId()%>" name="id">
        </div>
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label"><h3>Photo</h3></label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%=car.getPhoto()%>" name="photo">
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label"><h3>Brand</h3></label>
            <input type="text" class="form-control" id="exampleInputPassword1" value="<%=car.getBrand()%>" name="brand">
        </div>
        <div class="mb-3">
            <label for="exampleInputAA" class="form-label"><h3>Model</h3></label>
            <input type="text" class="form-control" id="exampleInputAA" value="<%=car.getModel()%>" name="model">
        </div>
        <div class="mb-3">
            <label for="exampleInputAAA" class="form-label"><h3>Year</h3></label>
            <input type="number" class="form-control" id="exampleInputAAA" value="<%=car.getYear()%>" name="year">
        </div>

        <div class="mb-3">
            <label for="example" class="form-label"><h3>Color</h3></label>
            <input type="text" class="form-control" id="example" value="<%=car.getColor()%>" name="color">
        </div>

        <div class="mb-3">
            <label for="exampleI" class="form-label"><h3>Engine Volume</h3></label>
            <input type="number" class="form-control" id="exampleI" value="<%=car.getEngineVolume()%>" name="enginevolume">
        </div>
        <button type="submit" class="btn btn-success">Save</button>

    </form>

    <form action="/delete1" method="post">
        <div class="mb-3">
            <label for="exampleInputId2" class="form-label"></label>
            <input type="hidden" class="form-control" id="exampleInputId2" aria-describedby="emailHelp" value="<%=car.getId()%>" name="id">
        </div>
        <button type="submit" class="btn btn-danger">Delete</button>
    </form>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>
