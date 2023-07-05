<?php
    // Import site config
    require_once($_SERVER["DOCUMENT_ROOT"] . "/e-health/site_config.php");

    // Auth component is dependent on header and config component
    require_once(COMPONENTS_DIR."/header.php");

    require_once(TEMPLATE_DIR . "/sidebar2_guru.php");

    // Connect to the database
    $dbHost = 'localhost';
    $dbName = 'e-health';
    $dbUser = 'root';
    $dbPass = '';

    $conn = new mysqli($dbHost, $dbUser, $dbPass, $dbName);

    // Check for connection errors
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Retrieve student appointments from the database
    $query = "SELECT * FROM janjitemupelajar";
    $result = $conn->query($query);

    // Display student appointments in biodata format
    if ($result->num_rows > 0) {
        echo "<h2>Appointments</h2>";
        while ($row = $result->fetch_assoc()) {
            echo "<div class='biodata'>";
            echo "<h3>Name: " . $row['namapelajar'] . "</h3>";
            echo "<p><strong>Reason:</strong> " . $row['sebabjt'] . "</p>";
            echo "<p><strong>Appointment Time:</strong> " . $row['waktujtpelajar'] . "</p>";
            echo "<p><strong>Status:</strong> " . $row['status'] . "</p>";
            echo "</div>";
        }
    } else {
        echo "No appointments found.";
    }

    // Close the database connection
    $conn->close();

    require_once(COMPONENTS_DIR . "/footer.php");
?>
<style>
    .biodata {
        border: 1px solid #ccc;
        padding: 20px;
        margin-bottom: 20px;
        width: 210mm;
        height: 297mm;
        page-break-inside: avoid;
    }
    
    @media print {
        body * {
            visibility: hidden;
        }
        .biodata, .biodata * {
            visibility: visible;
        }
        .biodata {
            position: absolute;
            left: 0;
            top: 0;
        }
    }
</style>
