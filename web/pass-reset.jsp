<!DOCTYPE html>
<html lang="en">
    <head>
        <title>KidKinder - Kindergarten Website </title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">      
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
        <link rel="stylesheet" href="css/styleLogin.css" />
        <style>
            body {

                background-image: url("img/school.jpg");
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size:100%;
                background-position : 50% 50%;
            }

        </style>
    </head>
    <%@ include file="include/head.jsp" %>
    <body>
        <div class="container clearfix">
            <div class="form pass-reset">
                <h3>Forgot password</h3>
                <form>
                    <p class="text-danger">${msq}</p>
                    <p>
                        <label>Username or email address<span>*</span></label>
                        <input type="text" class="form-control" name="email" id="email"/>
                         <label>Enter your password recently<span>*</span></label>
                        <input type="password" class="form-control" name="pass" id="password" />
                         <label>Enter your new Password<span>*</span></label>
                        <input type="password" class="form-control" name="pass1" id="password"  />
                         <label>Confirm your Password<span>*</span></label>
                         <input type="password" class="form-control" name="confirm" id="confirm"  />
                    </p>
                    <p>
                        <label>
                            <a href="login.jsp">Got my password</a>
                        </label>
                        
                        <input type="submit" value="Reset" />
                    </p>
                </form>
            </div>
        </div>
    </body>
</html>
