<%-- 
    Document   : agregarComentario
    Created on : 27-feb-2013, 17:28:51
    Author     : gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comentar</title>
    </head>

    <h1>Agregar Comentario para estudiante:</h1>
    <html:form action="/AgregarComentario"  acceptCharset="ISO-8859-1" onsubmit="return(this)">
        <html:hidden name="Usuario" property="nombreusuario"/>
        <html:textarea style="width:500px;height:250px;" name="Usuario" property="confirmar"/>
<br>
        <html:submit value="AgregarComentario"> Comentar </html:submit>
    </html:form>




</html>
