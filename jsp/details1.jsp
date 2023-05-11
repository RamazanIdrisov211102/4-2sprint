<%@ page import="kz.baibalaeva.project.Car" %><%--
  Created by IntelliJ IDEA.
  User: user
  Date: 23.11.2022
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Details</title>
    <style>
.mainDiv{
    background-color: ivory;

}
    </style>
</head>

<body>
<div class="mainDiv">
<%
    Car car = (Car) request.getSession().getAttribute("car");
    if(car != null){
%>


<img style="border-radius: 5px" width="300px " src=<%=car.getPhoto()%> class="card-img-top" alt="...">

<br>
<label><h3>Brand</h3></label>
<div><%=car.getBrand()%></div>
<label><h3>Model</h3></label>
<div><%=car.getModel()%></div>
<label><h3>Year</h3></label>
<div><%=car.getYear()%></div>
<label><h3>Color</h3></label>
<div><%=car.getColor()%></div>
<label><h3>Engine Volume</h3></label>
<div><%=car.getEngineVolume()%></div>

<%
    }
%>
<form action="/edit1" method="get">
    <input type="hidden" value="<%=car.getId()%>" name="id">
    <button class="btn btn-primary"> EDIT</button>
</form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>
