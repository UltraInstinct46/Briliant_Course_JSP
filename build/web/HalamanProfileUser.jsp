<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile User</title>
    <link rel="stylesheet" type="text/css" href="ProfileUser.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">

</head>

<body>
    <div class="card mt-50 mb-50">
        <div class="card-title mx-auto mb-4"> Your Profile </div>
        <form action="useredit" method="POST">
            <span id="card-header">ID Customer</span>
            <div class="row row-1">
                <input type="text" name="iduser" value=" " disabled>
            </div>

            <span id="card-header">Username</span>
            <div class="row row-1">
                <input name="username" type="text" value=" " required>
            </div>

            <span id="card-header">Password</span>
            <div class="row row-1">
                <input name="password" type="text" value=" " required>
            </div>

            <span id="card-header">E-mail</span>
            <div class="row row-1">
                <input name="email" type="text" value=" " required>
            </div>

            <div class="mt-3">
                <input type="submit" name="submit" value="SAVE" class="btn btn-primary">
            </div>
            <div class=" text-center">
                <a class="btn btn-danger" href="Logout">LOGOUT</a>
            </div>
        </form>
    </div>
</body>

</html>