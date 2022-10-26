/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var expPrecio = /^[0-9]$/;
var expNumPag = /^[0-9]$/;
var extTiempo = /^[0-1][a,z]$/;

function validacion() {
    var verificar = true;

    if (document.formulario.titulo.value) {
        alert("Falta el Titulo");
        document.formulario.titulo.focus();
        verificar = false;
    } else if (!expPrecio.test(document.formulario.precio.value)) {
        alert("inserta un nuero entero");
        document.formulario.precio.focus();
        verificar = false;
    }else if (document.formulario.autor.value) {
        alert("Falta el Autor");
        document.formulario.autor.focus();
        verificar = false;
    }else if (document.formulario.genero.value) {
        alert("Falta el Genero");
        document.formulario.genero.focus();
        verificar = false;
    }else if (document.formulario.formato.value) {
        alert("Falta el Formato");
        document.formulario.formato.focus();
        verificar = false;
    }else if (!extTiempo.test(document.formulario.tiempoEntrega.value)) {
        alert("Falta el Tiempo de Entrega");
        document.formulario.tiempoEntrega.focus();
        verificar = false;
    }else if (document.formulario.editorial.value) {
        alert("Falta la Editorial");
        document.formulario.editorial.focus();
        verificar = false;
    }else if (!expNumPag.test(document.formulario.numeroPaginas.value)) {
        alert("inserta un nuero entero");
        document.formulario.numeroPaginas.focus();
        verificar = false;
    }else if (!expNumPag.test(document.formulario.imagen.value)) {
        alert("Falta la imagen");
        document.formulario.imagen.focus();
        verificar = false;
    }


    if (verificar) {
        document.frmLogin.submit();
    }
}

window.onload = function () {
    document.frmLogin.enviar.onclick = validacion;
}

