   <link rel='stylesheet' href='resources/bootstrap/4.1.2/css/bootstrap.min.css'>
        <script type='text/javascript' src='resources/bootstrap/4.1.2/js/bootstrap.min.js'></script>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

        
<h2>Alumnos</h2>
 <p> <spring:message code="welcome.greeting" arguments="${startMeeting}"/> </p> 
<br/> 
 Mensaje:
  ${message}
   <br/>
    
   <br/>
   Cantidad de Registros alunmos registrados: 
   <br/>
   <c:if test="${!empty ListaPersona}">
   <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nombre</th>
      <th scope="col">Apellido</th>
      <th scope="col">DNI</th>
    </tr>
  </thead>
  <tbody>
      <c:forEach items="${ListaPersona}" var="dato">
    <tr>
      <th scope="row">1</th>
      <td>${dato.nombre}</td>
      <td>${dato.apellidos}</td>
      <td>${dato.dni}</td>
    </tr>
    </c:forEach>
        
  </tbody>
</table>
   </c:if>

    <a href="/" class="btn btn-warning">regresar</a> <br>
