<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="${alumnoShow.nombreCompleto}" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />

<section class="container py-3">
    <div class="row">
        <h1 class="h3">Datos del Alumno</h1>
        <p class="lead">Estás viendo los datos de ${alumnoShow.nombreCompleto}.</p>
    </div>

    <div class="row align-items-center px-4 mt-3">
        <div class="col-md-5 col-lg-4" >
            <div class="card h-100">
                <jsp:include page="partes/dataCardAlumno.jsp">
                    <jsp:param name="fotoAlumno" value="${alumnoShow.foto}" />
                    <jsp:param name="nombreCompletoAlumno" value="${alumnoShow.nombreCompleto}" />
                </jsp:include>
            </div>
        </div>
        <div class="col-md-7 col-lg-8" >
            <form id="formAgregarAlumno" action=""
                  method="get" class="was-validated border p-4 rounded-3 bg-light">
                <div class="row">
                    <div class="col-sm-6 mb-3">
                        <label for="nombreAlumno" class="form-label">Nombre</label>
                        <input type="text" class="form-control" id="nombreAlumno" name="nombreAlumno" value="${alumnoShow.nombre}" disabled>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="apellidoAlumno" class="form-label">Apellido</label>
                        <input type="text" class="form-control" id="apellidoAlumno" name="apellidoAlumno" value="${alumnoShow.apellido}" disabled>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="email" class="form-label">Mail</label>
                        <input type="text" class="form-control" id="email" name="email" value="${alumnoShow.mail}" disabled>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <label for="fechaNacim" class="form-label">Fecha de nacimiento</label>
                        <input type="date" class="form-control" id="fechaNacim" name="fechaNacim" value="${alumnoShow.fechaNacimiento}" disabled>
                    </div>

                </div>
                <div class="row justify-content-end mt-2">

                    <div class="col-12">
                        <div class="float-end">
                            <a href="${pageContext.request.contextPath}/app?accion=edit&id=${alumnoShow.id}" class="btn bg-warning">Editar Alumno</a>
                            <a href="${pageContext.request.contextPath}/app?accion=remove&id=${alumnoShow.id}" class="btn bg-danger text-light">Borrar Alumno</a>                            
                            <a href="${pageContext.request.contextPath}/app" class="btn btn-secondary">Listado Alumnos</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</section>

<script src="scripts/fotobase64.js"></script>
<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>


