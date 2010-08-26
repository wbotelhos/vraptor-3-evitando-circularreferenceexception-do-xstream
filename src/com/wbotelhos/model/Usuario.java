package com.wbotelhos.model;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

/**
 * @author Washington Botelho
 * @article http://www.wbotelhos.com/2010/08/26/vraptor-3-evitando-circularreferenceexception-do-xstream 
 *
 */

@Entity
public class Usuario implements java.io.Serializable {

	private static final long serialVersionUID = -5310561663493623047L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	protected Long id;
	private String nome;

	@OneToMany(mappedBy = "usuario")
	private Collection<Filme> filmeList;

	@OneToMany(mappedBy = "usuario", fetch = FetchType.EAGER)
	private Collection<Mensagem> mensagemList;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Collection<Filme> getFilmeList() {
		return filmeList;
	}

	public void setFilmeList(Collection<Filme> filmeList) {
		this.filmeList = filmeList;
	}

	public Collection<Mensagem> getMensagemList() {
		return mensagemList;
	}

	public void setMensagemList(Collection<Mensagem> mensagemList) {
		this.mensagemList = mensagemList;
	}

}