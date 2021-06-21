<?php
include('../baza.php');
if(!$connect){
    header('location: ../index.php');
}
$select_database=$_POST['select_database'];
$id=$_POST['id'];
$query = "SELECT * FROM $select_database WHERE id = '$id'";
$result=mysqli_query($connect,$query);
$data=mysqli_fetch_assoc($result);
echo  'Słówko o id: '.$data['id'].'<br> Wartość 1: '.$data['angielskie'].'<br> Wartość 2: '.$data['polskie'].'<br> Waga słówka: '.$data['flaga_slowa'];
?>
