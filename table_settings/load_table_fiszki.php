<?php
include('../baza.php');
if(!$connect){
    header('location: ../index.php');
}
if($_POST['table']!=''){
$table=$_POST['table'];
//$flaga_slowo = 'flaga_slowa' ;

$query = "SELECT * FROM $table WHERE flaga_slowa = '1' ";
$result=mysqli_query($connect,$query);
while ($row = mysqli_fetch_assoc($result)) {
echo '<script>array1.push("'.$row['angielskie'].'");array2.push("'.$row['polskie'].'");flaga_slowa.push("'.$row['flaga_slowa'].'")</script>';
}
}
else{
    header('location: ../fiszki.php');
}
?>
