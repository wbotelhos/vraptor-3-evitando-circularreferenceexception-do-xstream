package com.wbotelhos.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import static br.com.caelum.vraptor.view.Results.json;

import com.wbotelhos.dao.UsuarioDao;
import com.wbotelhos.model.Usuario;

/**
 * @author Washington Botelho
 * @article http://www.wbotelhos.com/2010/08/26/vraptor-3-evitando-circularreferenceexception-do-xstream 
 *
 */

@Resource
public class UsuarioController {

	private Result result;
	private UsuarioDao usuarioDao;

	UsuarioController(Result result, UsuarioDao usuarioDao) {
		this.result = result;
		this.usuarioDao = usuarioDao;
	}

	@Get
	@Path("/usuario/{usuario.id}")
	public void listar(Usuario usuario) {
		try {
			usuario = usuarioDao.loadById(usuario.getId());
			result.use(json()).withoutRoot().from(usuario)
				.include("filmeList")
				.include("mensagemList")
			.serialize();
		} catch (Exception e) {
			e.printStackTrace();
			result.use(json()).withoutRoot().from(e.getMessage()).serialize();
		}
	}

}