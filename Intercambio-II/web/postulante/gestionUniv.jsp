<%-- 
    Document   : gestionUniv
    Created on : 30/09/2013, 03:32:00 PM
    Author     : jaescalante02
--%>
<%@page import="Clases.GestionUniversidad"%>
<%Object tmp = session.getAttribute("nombreusuario");%>
<%Object var = session.getAttribute("nombre");%>
<%Object confirm = session.getAttribute("confirmar");%>
<%@page import="javax.swing.text.html.HTML"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; UTF-8">
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>

 <title>Sistema de Gesti&oacute;n de Intercambio</title>
<html:html lang="true">
    
    <% GestionUniversidad g = (GestionUniversidad) request.getAttribute("gestionuniv");%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <br><br><br>
    <br><br><br>
    <div id="muestrauni">
       <table  border="1" width="520">
           
           <tr>
               
               <td width="300">
                   
                   <b>Universidad</b> 
                   
                   
               </td>
               <td>
                   
                   <b><%=g.getuniv()%></b>
                   
               </td>
               
           </tr>
           <tr>
               
               <td>
                   
                   Pa&iacute;s
                   
               </td>
               <td>
                   <b><%=g.getpais()%></b>
               </td>
               
           </tr>
           <th colspan="2">GENERAL</th>
           <tr>
               <td>
                   N&uacute;mero de encuestas llenadas del pa&iacute;s        
               </td>
               <td>
                  
               </td>
           </tr>
           <tr>
               <td>
                   Promedio de aceptaci&oacute;n del pa&iacute;s        
               </td>
               <td>
                  
               </td>
           </tr>
           <th colspan="2">CARRERA</th>
           <tr>
               <td>
                 N&uacute;mero de encuestas llenadas del pa&iacute;s
               </td>
               <td>
                   
               </td>
           </tr>
           <tr>
               <td>
                    Promedio de aceptaci&oacute;n del pa&iacute;s 
               </td>
               <td>
                   
               </td>
           </tr>
           
       </table>    
       </div>
       <br>
       
       <html:form  action="/GestionporUniv" method="POST" enctype="multipart/form-data" onsubmit="return(this)">
       
            <p hidden="true"><html:text name="GestionUniversidad" property="pais" maxlength="20" errorStyleClass="error" value ="0"
                    errorKey="org.apache.struts.action.ERROR"></html:text></p> 
              
                          <p style="text-align: center">
                            <html:submit >
                                Volver
                            </html:submit>
                        </p>    

       </html:form>
                   
</html:html>
