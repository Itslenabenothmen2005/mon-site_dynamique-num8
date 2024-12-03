<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>rdv</title>
    <link rel="stylesheet" type="text/css" href="messtyles1.css" />
    <script src="controle.js"></script>
  </head><body>
      <form  method="post" action="rdv.php"  onsubmit="return verif2()">
          <fieldset>
             <label>médecin</label><select id="m" name="m" >
                  
                  <?php
                  $cnx=mysqli_connect('localhost','root','',"bd_gestion_rdv")or die("erreur cnx");
                  $req="select * from medecin;";
                  $res=mysqli_query($cnx,$req);
                  while($t=mysqli_fetch_row($res)){
                    echo("<option value=$t[0]>$t[1]||$t[3]</option>"); 
                  }
                  ?>
                  
</select></br>
<label>code patient</label><input type="Text" name="cp" id="cp" /></br>
<label>date de rendez-vous</label><input type="date" id="dr" name="dr"/></br>
<label>heure</label><input type="time" id="t" name="t" max="17:00" min="08:00" step="1800"/></br>
<label><input type="submit" value="ajouter"><input type="reset" value="annuler"></label></br>

</fieldset>
</form>
<body>
</html>

