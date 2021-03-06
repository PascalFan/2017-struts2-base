<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ABM</title>
</head>
<body>
	<div>
		<s:form action="save">
			<s:textfield label="Nombre" name="name"></s:textfield>
			<s:textfield label="Edad" name="age"></s:textfield>
			<s:radio label="Genero" name="gender" list="#{'Femenino':'Femenino','Masculino':'Masculino'}" />
			<s:submit></s:submit>
			<s:actionerror/>
		</s:form>
	</div>  
	<br></br>
	<hr></hr>
	<div>
		<table border="1px" style="border-collapse:collapse;">
			<tr>
				<th>ID</th>
				<th>NOMBRE</th>
				<th>EDAD</th>
				<th>GENERO</th>
			</tr>
		<s:iterator value="personas" var="p" >
			<tr>
				<td><s:property value="#p.id"/></td>
				<td><s:property value="#p.name"/></td>
				<td><s:property value="#p.age"/></td>
				<td><s:property value="#p.gender"/></td>
			</tr>
		</s:iterator>
		</table>
	</div>
	<br></br>
	<hr></hr>
	<div>
		<h3>Eliminar de la lista</h3>
		<s:form action="delete">
			<s:textfield label="Id" name="id"></s:textfield>
			<s:submit></s:submit>
		</s:form>
	</div>
	<hr></hr>
	<div>
		<h3>Modificar en la Lista</h3>
		<h5>Insertar Id de persona a modificar</h5>
		<s:form action="irAModificar">
			<s:textfield label="Id" name="id"></s:textfield>
			<s:submit></s:submit>
			<s:actionerror/>
		</s:form>
	</div>
</body>
</html>