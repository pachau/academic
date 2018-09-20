  <link rel='stylesheet' href='resources/bootstrap/4.1.2/css/bootstrap.min.css'>
        <script type='text/javascript' src='resources/bootstrap/4.1.2/js/bootstrap.min.js'></script>
        <link rel="stylesheet" href="resources/jquery/jquery-ui.css">        
        <script type='text/javascript' src='webjars/jquery/3.3.1/dist/jquery.min.js'></script>   
        <link href="resources/style/app.css" rel="stylesheet">
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
    <script>
    $( function() {
      $( ".widget input[type=submit], .widget a, .widget button" ).button();
      $( "button, input, a" ).click( function( event ) {
        event.preventDefault();
      } );
    } );
    </script>        
    <h1>Hello ! welcome to the academic system</h1>
     
  <br/>
  Mensaje:
  ${message}
   <br/>
   
   <p> <spring:message code="welcome.greeting" arguments="${startMeeting}"/> </p> 
    
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
    <a href="/pers" class="btn btn-warning">Ir Persona</a> 

    <a href="/pru1" class="btn btn-primary">Contactenos</a>
    <a href="/pru2" class="btn btn-danger">Productos</a>

