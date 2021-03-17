package mx.prueba.concepto.service;

import mx.prueba.concepto.buro.model.Usuario;


public class UsuarioServiceImpl implements UsuarioServiceI{


	public void altaUsuario(Usuario user) {
		System.out.println("El alta en el servicio "+user.getNombre());
		
	}

}
