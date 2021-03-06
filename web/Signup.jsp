<%-- 
    Document   : Signup
    Created on : Jan 27, 2022, 9:05:53 PM
    Author     : Duong Xuan Thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link href="css/login.css" rel="stylesheet" type="text/css"/>
        
        <link href='https://fonts.googleapis.com/css?family=Raleway:300' rel='stylesheet' type='text/css'>
        <title> Đăng kí tài khoản</title>
    </head>
    <body>
        <div id="logreg-forms">
           
<form action="SignUp" method="post" class="form-signup" style="display: block;">
           
                <p class="text-danger">${message2}</p>
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Đăng kí</h1>
                <input name="user"  type="text" id="user-name" class="form-control" placeholder="Tên đăng nhập" required="" autofocus="">
               
                <input name="email" value="${email}" type="text" id="user-repeatpass" class="form-control" placeholder="Email" required autofocus="">
                 <input name="phone" value="${phone}" type="text" id="user-repeatpass" class="form-control" placeholder="Số điện thoại" required autofocus="">
                  <input name="name" value="${fullname}" type="text" id="user-repeatpass" class="form-control" placeholder="Tên đầy đủ" required autofocus="">
                  <input name="pass" type="password" id="user-pass" class="form-control" placeholder="Mật khẩu" required autofocus="">
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Nhập lại mật khẩu" required autofocus="">

                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Đăng kí</button>
               <button class="btn btn-primary btn-block"  type="button"  id="btn-signup"><a href="Home"><i class="fas fa-arrow-left "></i>  Quay lại</a></button>
            </form>
            <br>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
     
    </body>
</html>

