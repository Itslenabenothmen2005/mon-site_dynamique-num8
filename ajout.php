
<?php
$cnx=mysqli_connect("localhost","root","","bd_gestion_rdv") or die("PB CNX");
$code=$_POST['c'];
$np=$_POST['np'];
$dn=$_POST['dn'];
$tel=$_POST['telpat'];
$gr = $_POST['g'];

$req="select * from patient where code='$code';";
$res=mysqli_query($cnx,$req) or die("pb req".mysqli_error($cnx));
$nb=mysqli_num_rows($res);
if($nb>0) die("patient déjà enregistrée");

$req2="insert into patient values('$code','$np','$dn','$gr','$tel');";

mysqli_query($cnx,$req2) or die("pb insert:".mysqli_error($cnx));

if(mysqli_affected_rows($cnx)>0)
echo ("patient enreg avec succès");
mysqli_close($cnx);
?>
