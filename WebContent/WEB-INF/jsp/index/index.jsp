<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>http://wbotelhos.com</title>

		<script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
	</head>
	<body>
		<input type="button" value="Pesquisar" onclick="loadUsuarioById(1);"/>

		<script type="text/javascript">
			function loadUsuarioById(id) {
				$.getJSON('<c:url value="/usuario/"/>' + id, function(usuario) {
					if (usuario.id) {
						var builder = 'Usuário:\n\t' + usuario.nome + '\n\nFilmes:\n';
		
						for (var i = 0; i < usuario.filmeList.length; i++) {
							builder += '\t- ' + usuario.filmeList[i].titulo + '\n';
						}

						builder += '\nMensagens:\n';

						for (var i = 0; i < usuario.mensagemList.length; i++) {
							builder += '\t- ' + usuario.mensagemList[i].corpo + '\n';
						}
		
						alert(builder);
					} else {
						alert('Erro: ' + usuario);
					}
				});
			};
		</script>
	</body>
</html>