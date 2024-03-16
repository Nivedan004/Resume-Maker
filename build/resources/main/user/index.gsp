<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Resume Maker</title>
    <!-- Favicon Icon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png"/>
    <!-- Latest Bootstrap min CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom Styles -->
    <style>
    body {
        background-color: #333; /* Dark background color */
        color: #fff; /* Light text color */
        font-family: Arial, sans-serif; /* Font family */
    }

    .login-section {
        padding: 50px 0; /* Added padding for better visibility */
    }

    .login-form {
        background-color: #444; /* Dark background color for form */
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.3); /* Added shadow for depth */
    }

    .login-form h2 {
        color: #007bff; /* Primary color for heading */
        margin-bottom: 30px;
        text-align: center;
    }

    .login-form label {
        font-weight: bold;
    }

    .form-control {
        background-color: #555; /* Dark background color for input fields */
        border-color: #666; /* Border color for input fields */
        color: #fff; /* Light text color for input fields */
    }

    .btn-primary {
        background-color: #007bff; /* Primary button background color */
        border-color: #007bff; /* Primary button border color */
        transition: background-color 0.3s ease; /* Smooth transition on hover */
    }

    .btn-primary:hover {
        background-color: #0056b3; /* Darker color on hover for primary button */
        border-color: #0056b3; /* Darker border color on hover for primary button */
    }
    </style>
</head>
<body>
<section class="login-section">
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="login-form">
                    <h2>Resume Maker</h2>
                    <form action="login" method="POST">
                        <div class="form-group">
                            <label for="emailaddress">Email Address:</label>
                            <input type="email" class="form-control" id="emailaddress" name="emailaddress"  placeholder="Enter your email" required>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Verify Email</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Latest jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<!-- Latest compiled and minified Bootstrap -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
