<?php
include '../../connection/connection.php';
date_default_timezone_set('Asia/Manila');

$sql1 = "Select * from user where username = '" . $_POST['regusername'] . "'";
$result = mysqli_query($conn, $sql1);

if (mysqli_num_rows($result) > 0) {
    header("Location:../register.php?status=0");
} else {
    $sql = "INSERT INTO user (user_email, password, username, date_created)
      VALUES ('" . base64_encode(strtolower($_POST["regemail"])) . "','" . password_hash(sha1($_POST["regpass"]), PASSWORD_BCRYPT, ['cost' => 12]) . "','" . strtoupper($_POST["regusername"]) . "','" . date("Y-m-d | H:i:s") . "')";
    if (mysqli_query($conn, $sql)) {
        // $to = $_POST['email'];
        // $subject = "";
        // $message = "
        //   Dear Mr/Ms. " . $_POST['username'] . ",
        //   <br><br>
        //   You have successfully created an account in the System. <br />
        //   You can now login to <a href=''> System. </a>       

        //   <br /><br />
        //   Thank you,<br /><br />
        //   <b>Administrator</b>
        //   <br /> <br />

        //   Privacy Note: All information entered in this site (including names, contact number and email address) will be used exclusively for the stated purposes of this site and will not be made available for any other purpose or to any other party. This is an automatically generated email, please do not reply.
        //   ";

        // // Always set content-type when sending HTML email
        // $headers = "MIME-Version: 1.0" . "\r\n";
        // $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        // // More headers
        // $headers .= 'From:  Administrator <info@.dostmimaropa.ph>' . "\r\n";

        // mail($to, $subject, $message, $headers);

        // //SMS

        header('Location: ../index.php?status=1');
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}
mysqli_close($conn);
