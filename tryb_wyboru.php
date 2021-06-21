<?php
include('baza.php');//sprawdzam połączenie
if(!$connect){
    header('location: index.php');//przekierowanie do logowania
}
require_once('polaczeniePDO.php');
?>
<!DOCTYPE html>
<html lang="en">

<?php include('header.php') ?>

<body>
<h2>PANEL ADMINISTRACYJNY</h2>

<div class="select" >

<button  class="fiszki" id="przycisk">NAUKA</button>
<button  class="zestawy" id="zestawy">ZARZĄDZAJ ZESTAWAMI</button>

</div>

<?php
// menu
echo '
<div class="menu">
   <div class="menubutton"><i class="icon-cog-alt"></i>
   </div>
   <div class="menu-content">
           <div>
            <h1>Operacje na zestawach</h1>'
;
            dodaj_zestaw();
            usun_zestaw();
            wyszukaj_zestaw();
            importuj_baze_danych();
            echo "</br>";
            //exportuj_baze_danych();
            wyloguj();
echo '
           </div>
   </div>
</div>'
;

// poruszanie sie po stronie
if(!isset($_GET['zestaw']))   {

    $_GET['zestaw'] = 'zestaw';

}
// zarzadzanie zestawami
switch($_GET['zestaw']){
case 'dodaj_zestaw':
    // dodaje tak naprawdę dwa zestawy pierwszy z informacja o słówkach drugi z miejscem na nie
    // schemat tabel:

    /* :: tutaj flaga decyduje czy dany zestaw jest aktywny
        ---------------------------
       - id - name_table - flaga -
       ---------------------------
       -  1 -   Unit_1   -   1   -
       -    -            -       -
       ---------------------------

       :: tutaj flaga decyduje czy danego słówka w danej chwili chcemy się uczyć
       ---------------------------------
       - id - angielskie - polskie - zdanie - flaga -
       ---------------------------------
       -    -    -    -        -       -
       -    -    -    -        -       -
       ---------------------------------  */
       // formularz który zdefinuje zmienną db_name
       //  $query = "CREATE TABLE $db_name ( id INT NOT NULL AUTO_INCREMENT ,  v1 VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,  v2 VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,  weight INT NOT NULL ,    PRIMARY KEY  (id)) ENGINE = InnoDB";

    $db_name = $_POST['databasename'];

    if (empty($db_name)){
        echo "Taka nazwa bazy danych nie istnieje";
        //header("Location: tryb_wyboru.php");
    }

    try
    {
    $query = "CREATE TABLE $db_name ( id INT NOT NULL AUTO_INCREMENT ,  v1 VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,  v2 VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,  weight INT NOT NULL ,    PRIMARY KEY  (id)) ENGINE = InnoDB";
    $pdo ->query($query) or die('Błąd zapytania CREATE TABLE');
    $querty = "INSERT INTO info_table (name_table, flaga) VALUES ('$db_name', '0')";
    $pdo ->query($querty) or die('Błąd zapytania INSERT INTO');

    header("Location: tryb_wyboru.php");

    }
    catch(PDOException $e)
    {
       echo 'Połączenie nie mogło zostać utworzone: ' . $e->getMessage();
       echo '</br><a href="tryb_wyboru.php">wróć</a>';
    }
break;
case 'usun_zestaw':
    // defincja db_name przychodzi z formlarza
    $db_name = $_POST['databasename'];

    if (empty($db_name)){
        echo "Taka nazwa bazy danych nie istnieje";
    }

    try
    {
    $querty = "DROP table $db_name";
    $pdo ->query($querty) or die('Błąd zapytania DROP');
    $querty = "DELETE FROM info_table WHERE name_table = '$db_name'";
    $pdo ->query($querty) or die('Błąd zapytania DELETE');

    header("Location: tryb_wyboru.php");

    }
    catch(PDOException $e)
    {
       echo 'Połączenie nie mogło zostać utworzone: ' . $e->getMessage();
       echo '</br><a href="tryb_wyboru.php">wróć</a>';
    }
break;
case 'wyszukaj_zestaw':
    // defincja db_name przychodzi z formlarza
    $db_name = $_POST['databasename'];

    if (empty($db_name)){
        echo "Taka nazwa bazy danych nie istnieje";
    }

    try
    {
    $querty = "SELECT table_name  FROM information_schema.tables where table_schema='fiszki_nauka_slowek' AND table_name LIKE '$db_name'";
    $liczba = $pdo ->query($querty) or die('Nie znaleziono wybranej bazy danych');
    $wykonanie = $pdo->prepare($querty);
    $wykonanie->execute();
    $licznik_id=$wykonanie->rowCount();
        printf("<h2>WYSZUKANA BAZA DANYCH</h2>");
                    while($row = $liczba->fetch())
                              {
        printf("<div class='select'><button>".$row[0]."</button></div>");
                              }

    }
    catch(PDOException $e)
    {
       echo 'Połączenie nie mogło zostać utworzone: ' . $e->getMessage();
       echo '</br><a href="tryb_wyboru.php">wróć</a>';
    }
break;
case 'importuj_baze_danych':
$nazwa_importowanej_tabeli = $_POST["nazwa_importowanej_tabeli"];
   try
    {
            $utworz_miejsce_na_importowana_tabele = "CREATE TABLE $nazwa_importowanej_tabeli ( id INT NOT NULL AUTO_INCREMENT ,  angielskie VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,  polskie VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,  zdanie VARCHAR(90) CHARACTER SET utf8 COLLATE utf8_general_ci  , flaga_slowa INT NOT NULL , PRIMARY KEY  (id)) ENGINE = InnoDB";
            $pdo ->query($utworz_miejsce_na_importowana_tabele) or die('Błąd zapytania CREATE TABLE');
            $querty = "INSERT INTO info_table (name_table, flaga) VALUES ('$nazwa_importowanej_tabeli', '0')";
            $pdo ->query($querty) or die('Błąd zapytania INSERT INTO');
    }
   catch(PDOException $e)
    {
        echo 'Połączenie nie mogło zostać utworzone: ' . $e->getMessage();
    }
$csvFile=$_FILES["file"]["tmp_name"];
$handle = fopen($csvFile, "r");
if ($handle) {
  while (($line = fgetcsv($handle)) !== false) {
    try {
      $stmt = $pdo->prepare("INSERT INTO $nazwa_importowanej_tabeli (angielskie, polskie, zdanie, flaga) VALUES ('$line[0]','$line[1]','$line[2]','$line[3]')");
      $stmt->execute([$line[0], $line[1], $line[2], $line[3]]);
    } catch (Exception $ex) {
      echo $ex->getmessage();
    }
  }
  fclose($handle);
} else { echo "ERROR OPENING $csvFile"; }
break;
case 'exportuj_baze_danych':
$nazwa_eksportowanej_tabeli = $_POST["nazwa_eksportowanej_tabeli"];

header('Content-Type: application/octet-stream');
header("Content-Transfer-Encoding: Binary");
header("Content-disposition: attachment; filename=\"export.csv\"");

$stmt = $pdo->prepare("SELECT * FROM $nazwa_eksportowanej_tabeli");
$stmt->execute();
while ($row = $stmt->fetch(PDO::FETCH_NAMED)) {
  echo implode(",", [$row['v1'], $row['v2'], $row['zdanie'], $row['flaga']]);
  echo "\r\n";
}
break;
default:
printf('<div>');
require_once "table_select_admin.php" ;
printf('</div>');
break;
} // zamykający swittch

function dodaj_zestaw(){
   // formularz tworzy wartość string zmiennej db_name
    echo '<div></br>
                <h1>Dodawanie nowej tabeli</h1>
                <form action="tryb_wyboru.php?zestaw=dodaj_zestaw" method="post">
                    Nazwa nowej tabeli:
                        <input type="text" name="databasename">
                        <input class="submit" type="submit" value="Dodaj">
                </form>
         </div>';

}

function usun_zestaw(){
    // formularz tworzy i definuje zmienną db_name
    echo' <div></br>
                <h1>Usuwanie tabel</h1>
                <form action="tryb_wyboru.php?zestaw=usun_zestaw" method="post">
                    Nazwa usuwanej tabeli:
                        <input type="text" name="databasename">
                        <input class="submit" type="submit" value="Usuń">
                </form>
          </div>';
}

function wyszukaj_zestaw(){
    echo' <div></br>
                <h1>Wyszukiwanie zestawu</h1>
                <form action="tryb_wyboru.php?zestaw=wyszukaj_zestaw" method="post">
                    Wyszukaj zestaw:
                        <input type="text" name="databasename">
                        <input class="submit" type="submit" value="Wyszukaj">
                </form>
          </div>';
}

function importuj_baze_danych(){

          echo '<div class="import" >
                    <form action="tryb_wyboru.php?zestaw=importuj_baze_danych" method="post" name="upload_excel" enctype="multipart/form-data">
                    </br>
                    <legend>Importuj dane z pliku CSV </legend>
                    -----------------------------------------</br>
                    - angielskie - polskie - zdanie - flaga -</br>
                    -----------------------------------------</br>
                    -____________-_________-_______ -_______-</br>
                    -____________-_________-_______ -_______-</br>
                    -----------------------------------------</br>
                                <input type="file" name="file" required>
                                <input type="text" name="nazwa_importowanej_tabeli" placeholder="nazwa zestawu"  style="width:140px;" required>
                                <input type="submit" id="submit" name="Import" value="Wyślij" class="btn btn-primary button-loading" data-loading-text="Loading..."></input>
                      </form>
                </div>';
}

function exportuj_baze_danych(){
      echo '<div class="import" >
                  <form action="tryb_wyboru.php?zestaw=exportuj_baze_danych" method="post" name="upload_excel" enctype="multipart/form-data">
                        <legend>Exportuj dane do pliku CSV </legend>
                         podaj nazwę tabeli: <input type="text" name="nazwa_eksportowanej_tabeli"  style="width:120px;" required>
                        <input type="submit" name="export" class="btn btn-success" value="export to excel"/>
                  </form>
            </div>';
}

function wyloguj(){
    echo'<div>
                    <a href="table_settings/log_out.php">WYLOGUJ</a>
         </div>';
}

?>
</body>

<script>
 $('.select button').click(function(){
            $('.select button').removeClass('active')
            console.log(this.classList.add('active'))
        })

const menu_click = document.querySelector('.menubutton').addEventListener('click', (e) => {
    document.querySelector('.menu').classList.toggle('active');
});


  $("button").on('click',function(){
    var zestaw = $( this ).text();
        window.document.location.href="tryb_edycji.php?zestaw="+zestaw;
        return false;
  });



  $('#przycisk').click(function(){
    window.document.location.href="fiszki.php";
    return false;
  });



  $('#zestawy').click(function(){
    window.document.location.href="tryb_wyboru.php";
    return false;
  });

</script>
