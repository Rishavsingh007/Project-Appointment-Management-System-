<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ams";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Check if form is submitted
if (isset($_POST['login'])) {

    // Get form data
    $email = $_POST['email'];
    $password = $_POST['password'];

    // Check if email format is valid
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "<script>alert('Invalid email format. Please enter a valid email.')</script>";
        exit();
    }

    // Check if password length is valid
    if (strlen($password) < 6) {
        echo "<script>alert('Password should be at least 6 characters long.')</script>";
        exit();
    }

    // Check if email and password match in database
    $sql = "SELECT * FROM register WHERE Email='$email'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);
        if ($password == $row['Password']) {
            $email = $row['Email'];
            $login_time = date('Y-m-d H:i:s');
            // Insert login details into login table
            $insert_sql = "INSERT INTO login (email, login_time) VALUES ('$email', '$login_time')";
            if (mysqli_query($conn, $insert_sql)) {
                echo "<script>alert('Logged in successfully!')</script>";
            } else {
                echo "<script>alert('Error: " . mysqli_error($conn) . "')</script>";
            }
        } else {
            echo "<script>alert('Incorrect password. Please try again.')</script>";
        }
    } else {
        echo "<script>alert('Email not found. Please register first.')</script>";
    }
}

// Close connection
mysqli_close($conn);
?>
