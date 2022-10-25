/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var expUser = /^[-\w.%+]{1,40}@(?:[A-Z0-9-]{1,40}\.){1,40}[A-Z]{2,40}$/i;
var expRegCon = /^(\w){9,11}$/;

function validacion() {
    var verificar = true;

    if (!expUser.test(document.frmLogin.txtCorreoUsu.value)) {
        alert("Es incorrencto el formato del correo");
        document.frmLogin.txtCorreoUsu.focus();
        verificar = false;
    } else if (!expRegCon.test(document.frmLogin.password.value)) {
        alert("Longitud de la contraseña inválida");
        document.frmLogin.password.focus();
        verificar = false;
    }


    if (verificar) {
        document.frmLogin.submit();
    }
}

window.onload = function () {
    document.frmLogin.enviar.onclick = validacion;
}
