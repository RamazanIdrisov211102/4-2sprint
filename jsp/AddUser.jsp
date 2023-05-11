<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 20.11.2022
  Time: 12:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AddUsers</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <style>


        .flex-container {
            display: flex;
            background-color: #FFFFF0;
        }

        .flex-container > div {
            background-color: #f1f1f1;
            margin: 10px;
            padding: 20px;
            font-size: 30px;
        }
    </style>
</head>
<body>

<div class="mainDiv">
    <div class="block1">

        <nav class="navbar navbar-expand-lg bg-warning">
            <div class="container-fluid">
                <a class="navbar-brand" href="/homeCars">Bitlab_Car</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="/homeCars">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/addCar">AddCars</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Language
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">Kazakh</a></li>
                                <li><a class="dropdown-item" href="#">Russian</a></li>
                                <li><a class="dropdown-item" href="#">English</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/AddUser">Login</a>
                        </li>

                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </div>
    <div class="block2"></div>
    <div class="block3"></div>
</div>
<div class="mainDiv" style="width:300%;height:100vh; margin-left: 400px; margin-top:150px; text-align:center;width: 35%">
    <form action="/AddUser" method="post">
        <div class="mb-3" style="border-radius: 15px;justify-content: center; align-items: center">
            <label for="exampleInputEmail1" class="form-label">Введите имя</label>
            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="name">
        </div>
        <div class="mb-3" style="border-radius: 15px;justify-content: center; align-content: center">
            <label for="exampleInputPassword1" class="form-label">Введите фамилие</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="surname">
        </div>
        <div class="mb-3" style="border-radius: 15px;justify-content: center; align-content: center">
            <label for="exampleInputAA" class="form-label">Введите номер телефона</label>
            <input type="text" class="form-control" id="exampleInputAA" name="phoneNumber">
        </div>
        <form action="/homeCars" method="post">
            <button style="border-radius:5%;color:white;background-color : darkslateblue" class="btn btn-primary"> Войти</button>
        </form>

    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>
