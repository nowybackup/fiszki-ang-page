<?php
//Dzięki temu plikowi można wybrać której tabeli słówek w danej chwili się uczysz, chciałbym to zamienić by aktywną tabelę ustawiało się bezpośrednio w ustawieniach po przez dodanie flagi w bazie danych   AND DATA_FREE='0'"; //

        $query = "SELECT name_table  FROM info_table WHERE flaga='1'";//wyszukuje nazwy tabel z db
        $result=mysqli_query($connect,$query);
        $count = 0;
        $policz = mysqli_num_rows($result);
            if ( $policz > 0){
                printf("<h2>AKTYWNE ZESTAWY</h2>");
                printf("<div class='select'></br>");
                while ($row = mysqli_fetch_array($result)) {
                   //  $query2 = "SELECT table_name FROM '$row[0]' WHERE flaga='1' ";
                     echo '<button>'.$row[0]."</button>";
                    $count++;
                }
                printf("</div>");
            } else {

              printf("<h2>NIE MA AKTYWNYCH ZESTAWÓW</h2>");
            }

    if($count == 0){//gdy nie ma żadnej tabeli dodaj fiszki
        $query = "CREATE TABLE fiszki_nauka_slowek.fiszki ( id INT NOT NULL AUTO_INCREMENT ,  angielskie VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,  polskie VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , zdanie VARCHAR(70) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL , flaga_slowa INT NOT NULL,  PRIMARY KEY  (id)) ENGINE = InnoDB";
        $result=mysqli_query($connect,$query);
        //wyświetlanie przedchwilo dodanej tabeli fiszki
        $query = "SELECT name_table  FROM info_table WHERE flaga='1'";
       $result=mysqli_query($connect,$query);
        $count = 0;
        while ($row = mysqli_fetch_array($result)) {
            echo '<button>'.$row[0]."</button>";
            $count++;
        }
    }
?>
