<%@page import="objeto.Alumno"%>
<%-- 
    Document   : index
    Created on : 6/07/2022, 02:00:19 AM
    Author     : handy
--%>
<%! 
Alumno alum[]=new Alumno[10];        
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>
        <%
            alum[0]=new Alumno("57201000170", "Rogelio",       "Pascualeño", 9, 9, 9);
            alum[1]=new Alumno("57201000171", "Jose de jesus", "Navarrete",  9, 8, 9);
            alum[2]=new Alumno("57201000172", "jesus",      "Espinoza",   8, 8, 8);
            alum[3]=new Alumno("57201000173", "Adrian",        "Gil",        9, 10, 9);
            alum[4]=new Alumno("57201000174", "Ivan",         "Garcia",     8, 10, 9);
            alum[5]=new Alumno("57201000175", "Brenda",         "Salgado",       10, 8, 9);
            alum[6]=new Alumno("57201000176", "Gabriela",        "Espinoza",  10, 8, 8);
            alum[7]=new Alumno("57201000177", "Yosahandy",     "Chepillo",   10, 8, 8);
            alum[8]=new Alumno("57201000178", "Ignacio",     "Zapoteco",      10, 9, 10);
            alum[9]=new Alumno("57201000179", "Maricruz",       "galvez",       7, 6, 8);
        %>

    <body>
          
            <% 
                out.println("<table class= table table-striped table-bordered table-hover table-dark>"
                               
                   + "<tr>"
                   + "<th>MATRICULA</th>"
                   + "<th>NOMBRE</th>"
                   + "<th>APELLIDO</th>"
                   + "<th>CJV</th>"
                   + "<th>DWI</th>"
                   + "<th>ACBD</th>"
                   + "<th>PROM</th>"
                   + "</tr>");
                for (int i=0;i<10;i++) 
                   
                out.println("<tr>"
                +"<td>"+alum[i].getMatricula() +"</td>"
                +"<td>"+alum[i].getNombre()    +"</td>" 
                +"<td>"+alum[i].getApellido() +"</td>"
                +"<td>"+alum[i].getCjv()       +"</td>"
                +"<td>"+alum[i].getDwi()       +"</td>"
                +"<td>"+alum[i].getEcbd()      +"</td>"
                +"<td>"+alum[i].Prom() +"</td>"
                +"</tr>");
                out.println("</table>"); 
            %>
        </div>
    </body>
</html>
