 function saludo(){
	alert("Hol2a");
	
}


/*function submitFormJavaScript(forma) {
          alert("Hola desde el js formAlta submitFormJavaScript ");
          document.getElementById('formas').action.value= "formAlta";
			alert(document.getElementById('formas').action.value);
          document.getElementById('formas').submit(); 
}*/
 
function submitFormJavaScript(context,valor) {
	alert("ok");
	if(valor==1){
		alert("1");
	 document.getElementById('formas').setAttribute('action', context+'/principal/frame');
}else{
	alert("2");
	document.getElementById('formas').setAttribute('action', context+'/doLogin');
}
  document.getElementById('formas').submit();
}