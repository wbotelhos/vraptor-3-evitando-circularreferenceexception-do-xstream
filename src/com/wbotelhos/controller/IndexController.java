package com.wbotelhos.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;

/**
 * @author Washington Botelho
 * @article http://www.wbotelhos.com/2010/08/26/vraptor-3-evitando-circularreferenceexception-do-xstream 
 *
 */

@Resource
public class IndexController {

	@Get
	@Path("/")
	public void index() {
	}

}