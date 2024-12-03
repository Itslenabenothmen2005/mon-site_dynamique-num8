<?php
echo("<table border='1'><tr><th>nb de consultation</th><th>spécialité</th></tr>");
$cnx=mysqli_connect("localhost","root","","bd_gestion_rdv") or die("erreur cnx");
$req="select count(*), spécialité from medecin as m 
,consultation as c where m.matricule=c.matricule 
and Month(daterdv)=Month(Now())
 and Year(Now())=Year(daterdv) group by spécialité;";
 $res=mysqli_query($cnx,$req) or die("echec req".mysqli_error($cnx));
 while($t=mysqli_fetch_array($res)){
     echo("<tr><td>$t[0]</td><td>$t[1]</td></tr>");
 }
 echo("</table>");

 mysqli_close($cnx);
 ?>
