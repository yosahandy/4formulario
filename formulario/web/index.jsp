
<%-- 
    Document   : index
    Created on : 6/07/2022, 03:16:49 AM
    Author     : handy
--%>
<%@page import="objeto.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    Alumno alum[]=new Alumno[10];
    int cont=0;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
        
        <title>JSP Page</title>
    </head>
    <body>
     <div  class="container">
        <h1 class="text-muted bg-primary text-center font-weight-bold">Registro Calificaciones</h1>
        <br></br>
        <form action="index.jsp" method="POST">
            <table border="0">
            <thead>
                <tr>
                    <th>MATRICULA</th>
                    <th>NOMBRE</th>
                    <th>APELLIDOS</th>
                    <th>DDI</th>
                    <th>DWI</th>
                    <th>ECBD</th>
                    </tr>
            </thead>
        <div class="row g-3 align-items-center">
            <tbody><tr>
            <td><input class="form-control" type="text"     name="tfMatricula"   value=""          size="11" maxlength="11"/></td>
            <td><input class="form-control" type="text"     name="tfNombre"      value=""          size="25"               /></td>
            <td><input class="form-control" type="text"     name="tfApellidos"   value=""          size="25"               /></td>
            <td><input class="form-control" type="text"     name="tfDdi"         value=""          size="2" maxlength="2"/></td>
            <td><input class="form-control" type="text"     name="tfDwi"         value=""          size="2" maxlength="2"/></td>
            <td><input class="form-control" type="text"     name="tfEcbd"        value=""          size="2" maxlength="2"/></td>
            <td><input class="btn btn-primary"type="submit" name="btnRegistra"   value="Registrar"                  /></td>
           </tr></tbody></table></form><br>
     </div>
            
       
        <%  
        if(request.getParameter("btnRegistra")!=null)
        {
          alum[cont]=new Alumno();
          alum[cont].setMatricula(request.getParameter("tfMatricula"));
          alum[cont].setNombre(request.getParameter("tfNombre"));
          alum[cont].setApellidos(request.getParameter("tfApellidos"));
          alum[cont].setDdi(Integer.parseInt(request.getParameter("tfDdi")));
          alum[cont].setDwi(Integer.parseInt(request.getParameter("tfDwi")));
          alum[cont].setEcbd(Integer.parseInt(request.getParameter("tfEcbd")));
          alum[cont].calcularProm();
          cont++;
        }
         %>  
    <div class="table-responsive-sm">
        <table class="table thead-dark table-striped table-bordered table-hover table-dark table-borderless">
            <thead>
                    <tr>
                    <th>MATRICULA</th>
                    <th>NOMBRE DEL ALUMNO</th>
                    <th>DDI</th>
                    <th>DWI</th>
                    <th>ECBD</th>
                    <th>PROM</th>
                </tr>
            </thead>
               
            <tbody>
                <%for(int i=0; i<cont; i++){%>
                <tr>
                    <td><%=alum[i].getMatricula()%></td>
                    <td><%=alum[i].getNombre()%> <%=alum[i].getApellidos()%></td>
                    <td><%=alum[i].getDdi()%></td>
                    <td><%=alum[i].getDwi()%></td>
                    <td><%=alum[i].getEcbd()%></td>
                    <td><%=alum[i].getProm()%></td>
                </tr> 
                <%}%>
            </tbody>
        </table>
    </div>       
    </body>
</html>
