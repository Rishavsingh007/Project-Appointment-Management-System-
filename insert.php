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
if (isset($_POST['submit'])) {

    // Get form data
    $username = $_POST['UserName'];
    $email = $_POST['Email'];
    $contactnumber = $_POST['ContactNumber'];
    $gender = $_POST['Gender'];
    $age = $_POST['Age'];
    $password = $_POST['Password'];
    $reenter = $_POST['ReEnter'];

    // Check if password and re-enter password matches
    if ($password == $reenter) {

        // Check if contact number is 10 digits long
        if (strlen($contactnumber) == 10) {

            // Check if email is valid
            if (filter_var($email, FILTER_VALIDATE_EMAIL)) {

                // Insert data into database
                $sql = "INSERT INTO register (UserName, Email, ContactNumber, Gender, Age, Password) VALUES ('$username', '$email', '$contactnumber', '$gender', '$age', '$password')";
                if (mysqli_query($conn, $sql)) {
                    echo "<script>alert('User added successfully!')</script>";
                } else {
                    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
                }
            } else {
                echo "<script>alert('Invalid email. Please try again.')</script>";
            }
        } else {
            echo "<script>alert('Contact number should be 10 digits long. Please try again.')</script>";
        }
    } else {
        echo "<script>alert('Passwords do not match. Please try again.')</script>";
    }
}

// Close connection
mysqli_close($conn);
?>
