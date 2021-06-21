<?php
require_once('../polaczeniePDO.php');
//$tabela= "tedtalks";
$id_word = $_POST['id_word'];
$tabela= $_POST['select_database'];
//$id_word = 30;
$flaga_slowa = "flaga_slowa";

     try
     {
          $polecenie = ("UPDATE $tabela SET  $flaga_slowa = '0' WHERE id = '$id_word' ");
          echo $polecenie;
          $liczba = $pdo ->exec($polecenie);
     }
     catch(PDOException $e)
     {
        echo 'Połączenie nie mogło zostać utworzone: ' . $e->getMessage();
     }
?>
