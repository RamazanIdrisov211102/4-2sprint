<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add cars</title>
    <!-- CSS only -->
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
<div class="MAIN" style="margin-left: 450px">
    <form action="/addCar" method="post">
        <div class="mb-3" style="width:300px;border-radius: 15px;justify-content: center; align-items: center">
            <label for="exampleInputEmail1" class="form-label">Киньте ссылку на фото </label>
            <input type="text"  class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="photo">
        </div>
        <div class="mb-3" style="width:300px; border-radius: 15px;justify-content: center; align-content: center">
            <label for="exampleInputPassword1" class="form-label">Введите Брэнд</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="brand">
        </div>
        <div class="mb-3"  style="width:300px;border-radius: 15px;justify-content: center; align-content: center">
            <label for="exampleInputAA" class="form-label">Введите модель</label>
            <input type="text" class="form-control" id="exampleInputaAA" name="model">
        </div>
        <div class="mb-3" style="width:300px;border-radius: 15px;justify-content: center; align-content: center">
            <label for="exampleInputAA" class="form-label">Укажите год</label>
            <input type="text" class="form-control" id="exampleInputAA" name="year">
        </div>
        <div class="mb-3" style="width:300px;border-radius: 15px;justify-content: center; align-content: center">
            <label for="exampleInputAA" class="form-label">Укажите цвет</label>
            <input type="text" class="form-control" id="exampleInputYear" name="color">
        </div>
        <div class="mb-3" style="width:300px;border-radius: 15px;justify-content: center; align-content: center">
            <label for="exampleInputAA" class="form-label">Объем машины</label>
            <input type="text" class="form-control" id="exampleInputColor" name="engineVolume">
        </div>

        <form action="/homeCars" method="post">
            <button style="margin-left:79px;border-radius:5%;color:white;background-color : darkslateblue" class="btn btn-primary"> Добавить</button>
        </form>
    </form>

</div>
</body>
</html>
