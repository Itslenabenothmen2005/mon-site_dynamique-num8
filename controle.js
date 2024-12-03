function verif1() {
  let code = document.getElementById("c").value;
  if (code.length != 4 || verifcode(code) == false) {
    alert("Erreur code");
    return false;
  }
  let np = document.getElementById("np").value;

  if (np == "" || verifnp(np) == false) {
    alert("Nom et prénom invalide");
    return false;
  }

  let r1 = document.getElementById("r1").checked;
  let r2 = document.getElementById("r2").checked;
  if (r1 == r2) {
    alert("Genre invalide");
    return false;
  }

  let d = document.getElementById("dn").value;
  let ds = new Date();
  let d1 = new Date(d);
  if (d == "" || d1 >= ds) {
    alert("Date de naissance invalide");
    return false;
  }

  let tel = document.getElementById("telpat").value;
  if (tel.length !== 8 || !chiffre(tel)) {
    alert("Numéro de téléphone incorrect");
    return false;
  }

  return true;
}

function verifcode(ch) {
  let test = ch.charAt(0) >= "A" && ch.charAt(0) <= "Z";
  let i = 1;
  while (ch.charAt(i) >= "0" && ch.charAt(i) <= "9" && i < ch.length) {
    i++;
  }
  return test && i == ch.length;
}

function verifnp(ch) {
  let i = 0;
  ch = ch.toUpperCase();
  while (ch.charAt(i) >= "A" && ch.charAt(i) <= "Z" && i < ch.length) {
    i++;
  }
  return i == ch.length;
}

function chiffre(x) {
  let i = 0;
  while (x.charAt(i) >= "0" && x.charAt(i) <= "9" && i < x.length) {
    i++;
  }
  return i == x.length;
}
function verif2() {
  let cp = document.getElementById("cp").value;
  let dr = document.getElementById("dr").value;
  let t = document.getElementById("t").value;
  if (cp == "" || verifcode(cp) == false) {
    alert("erreur cp");
    return false;
  }
  let d = new Date();
  let d1 = new Date(dr);
  if (dr == "" || d1 < d) {
    alert("erreur dr");
    return false;
  }

  if (t == "") {
    alert("erreur t");
    return false;
  }
  return true;
}
