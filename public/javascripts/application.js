// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function objetoAjax(){
	var xmlhttp=false;
	try {
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch (e) {
		try {
		   xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (E) {
		    xmlhttp = false;
  		}
	}
	if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
		xmlhttp = new XMLHttpRequest();
	}
	return xmlhttp;
}

function actualizar(){

	divResultado = document.getElementById('all-modules');
        if(divResultado != null){
	    ajax=objetoAjax();
            ajax.open("GET", "/vmodules/1/update_span");
	    ajax.onreadystatechange=function() {
		if (ajax.readyState==4) {
		    //mostrar resultados en esta capa
		    divResultado.innerHTML = ajax.responseText
		    //llamar a funcion para limpiar los inputs
		}

	    }
	}
	//enviando los valores
	ajax.send(null);
        setTimeout("actualizar()",1000);

}
setTimeout("actualizar()",1000);

