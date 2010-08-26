package com.wbotelhos.dao;

import javax.persistence.EntityManager;
import br.com.caelum.vraptor.ioc.Component;
import com.wbotelhos.model.Usuario;

/**
 * @author Washington Botelho
 * @article http://www.wbotelhos.com/2010/08/26/vraptor-3-evitando-circularreferenceexception-do-xstream 
 *
 */

@Component
public class UsuarioDao {

	private EntityManager entityManager;

	UsuarioDao(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public Usuario loadById(Long id) throws Exception {
		try {
			return entityManager.find(com.wbotelhos.model.Usuario.class, id);
		} catch (Exception e) {
			throw new Exception("Não foi possível carregar o registro.", e);
		}
	}

}