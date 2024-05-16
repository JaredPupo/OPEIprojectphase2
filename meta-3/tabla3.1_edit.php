<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../fonts/icomoon/style.css">
    <link rel="stylesheet" href="../css/owl.carousel.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- Style -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/style-sidemenu.css">
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.validate.min.js"></script>
    <script src="../js/main.js"></script>

    <title>Contact Form #2 - Page 1</title>
</head>
<body>
  <header></header>
          <!-- Dropdown list -->
<div class="formbold-main-wrapperDept">
    <a class="underline-button" href="tabla3.1.html">Editar</a>
</div>
<!-- Main form -->
<div class="formbold-main-wrapper-edit">
    <div class="formbold-form-wrapper-edit">
      <h6>Tabla 3.1 Reconocimientos estudiantiles por departamento </h6>
        <table class="table">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Tipo&nbsp;de&nbsp;Reconocimiento</th>
              <th scope="col">Cantidad&nbsp;de&nbsp;Estudiantes Reconocidos&nbsp;(Valor&nbsp;numérico)</th>
              <th scope="col">Descripción&nbsp;del&nbsp;reconocimiento</th>
              <th scope="col">Fecha</th>
              <th scope="col">Organismo&nbsp;que&nbsp;otorga&nbsp;el&nbsp;reconocimiento</th>
              <th scope="col">Editar</th>
              <th scope="col">Borrar</th>
            </tr>
          </thead>
          <tbody>
          <?php
            // Establish a database connection
            include 'db_info.php';

            // Fetch data from the database
            $sql = "SELECT * FROM table31";
            $result = $conn->query($sql);

            // Output data of each row
            while ($row = $result->fetch_assoc()) {
                echo "<tr>";
                echo "<td>" . $row['table31ID'] . "</td>";
                echo "<td><input type='text' id='field1_" . $row['table31ID'] . "' value='" . $row['field1'] . "'></td>";
                echo "<td><input type='text' id='field2_" . $row['table31ID'] . "' value='" . $row['field2'] . "'></td>";
                echo "<td><input type='text' id='field3_" . $row['table31ID'] . "' value='" . $row['field3'] . "'></td>";
                echo "<td><input type='text' id='field4_" . $row['table31ID'] . "' value='" . $row['field4'] . "'></td>";
                echo "<td><input type='text' id='field5_" . $row['table31ID'] . "' value='" . $row['field5'] . "'></td>";
                echo "<td><a href='javascript:void(0);' onclick='updateTable31Row(" . $row['table31ID'] . ")'>Update</a></td>";
                echo "<td><a href='delete.php?id=" . $row['table31ID'] . "'>Borrar</a></td>";
                echo "</tr>";
            }
            // Close connection
            $conn->close();
        ?>
          </tbody>
      </table>
    </div>
  </div>
    <!-- Add your footer box below -->
    <div class="footer-box">
        <!-- Content for the footer box goes here -->
        <p>&copy; 2024 UPRA Reports. All rights reserved.</p>
    </div>
</body>
</html>
