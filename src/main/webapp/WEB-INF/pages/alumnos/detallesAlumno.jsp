<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Detalles de ${alumnoAMostrar.nombreCompleto}" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />

<section class="container py-3">
    <div class="row">
        <h1 class="h3">Detalles</h1>
    </div>
    
    <div class="row align-items-center px-4 mt-3">
        <div class="col-md-5 col-lg-4" >
            <div class="card h-100">
                <jsp:include page="partes/dataCardAlumno.jsp">
                    <jsp:param name="fotoAlumno" value="${alumnoAMostrar.foto}" />
                    <jsp:param name="nombreCompletoAlumno" value="${alumnoAMostrar.nombreCompleto}" />
                </jsp:include>
              </div>
            </div>
        </div>
   
                <div class="row">
                    <div class="col-sm-6 mb-3">
                        <label for="mail" >Mail</label>
                        <p>${alumnoAMostrar.mail}</p>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="fechaNac">Fecha de nacimiento</label>
                        <p>${alumnoAMostrar.fechaNacimiento}</p>
                    </div>
                    <div class="col-8">
                        <a href="${pageContext.request.contextPath}/app?accion=edit&id=${alumnoAMostrar.id}" class="btn bg-warning "><i class="bi bi-pencil"></i></a>
                        <a href="${pageContext.request.contextPath}/app?accion=remove&id=${alumnoAMostrar.id}" class="btn bg-danger text-light"><i class="bi bi-trash3"></i></a>
                    </div>
                    <div class="col-12">
                        <div class="float-start">
                            <a href="${pageContext.request.contextPath}/app" class="btn btn-secondary ">Volver atrás</a>
                        </div>
                     </div>
                    </div>


<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>


