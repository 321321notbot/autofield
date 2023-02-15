<?php
   include "connect.php"
   ?>
<html>
   <head>
      <title></title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <title>тестовый сайт</title>
   </head>
   <body class="is-preload">
      <!-- Page Wrapper -->
      <div id="page-wrapper">
         <!-- Header -->
         <header id="header">
            <h3>Сотрудники имеющие 2 номера телефона</h3>
         </header>
         <section class="wrapper style5">
         <?php
            include "connect.php";
            $query23 = " SELECT `name` , `surname`, `patronymic`, `birthday`
            FROM `sotrudnik`
            JOIN `svyaz` ON svyaz.id_sotrudn = sotrudnik.id
            GROUP BY `id_sotrudn`
            HAVING COUNT( * ) =2";
            
            $result109 = $conn->query($query23);
            echo '<table style=color:#000000; width="50 px" border=1>
            <thead>
               <tr>
                   <td class="col1">Фамилия:</td>
                   <td class="col1">Имя:</td>
                   <td class="col1">Отчество:</td>
                   <td class="col1">День рождения:</td>
               </tr>
            </thead>
            <tbody>';
               
                   while ($row15 = mysqli_fetch_array($result109)):
               ?>
         <tr>
            <td class="col1">
               <?php echo $row15["surname"]; ?>
            </td>
            <td class="col1">
               <?php echo $row15["name"]; ?>
            </td>
            <td class="col1">
               <?php echo $row15["patronymic"]; ?>
            </td>
            <td class="col1" >
               <?php echo $row15["birthday"]; ?>
            </td>
         </tr>
         <?php endwhile; ?>
         </article>
         <!-- Footer -->
      </div>
      <!-- Scripts -->
   </body>
</html>
