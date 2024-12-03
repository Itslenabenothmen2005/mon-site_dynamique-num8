<?php
$cnx=mysqli_connect("localhost","root","","bd_gestion_rdv") or die("erreur cnx");
$m=$_POST['m'];
$cp=$_POST['cp'];
$dr=$_POST['dr'];
$t=$_POST['t'];
$req1="select * from patient where code='$cp';";
$res1=mysqli_query($cnx,$req1) or die(" pb req1".mysqli_error($cnx));
if(mysqli_num_rows($res1)<1){
    die("patient non existé");
}
$req2="select * from consultation where DateRDV='$dr' and HeureRDV='$t' and code='$cp';";
$res2=mysqli_query($cnx,$req2)or die(" pb req2".mysqli_error($cnx));
if(mysqli_num_rows($res2)>0){
    die("Impossible de prendre deux RDV");
}
$req3="select * from consultation where DateRDV='$dr' and HeureRDV='$t' and Matricule='$m';";
$res3=mysqli_query($cnx,$req3) or die(" pb requ3".mysqli_error($cnx));
if(mysqli_num_rows($res3)>0){
    die("RDV Indisponible");
}
$req4="insert into consultation values('$m','$cp','$dr','$t');";
$res4=mysqli_query($cnx,$req4);
if(mysqli_affected_rows($cnx)<1){
    die("echec d'inserrtion".mysqli_error($cnx));
}
else{
    echo("insertion fait avec succés");
}

mysqli_close($cnx);
?>