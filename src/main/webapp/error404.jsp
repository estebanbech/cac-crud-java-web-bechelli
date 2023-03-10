<jsp:include page="WEB-INF/pages/comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="No encontrado" />
</jsp:include>

<jsp:include page="WEB-INF/pages/comunes/navbar.jsp" />

<section class="container bg-warning">
    <div class="py-3 row align-items-center justify-content-center">
        <div class="col-6" >
            <img class="card-img-top" src="assets/error404.png" alt="Imagen de error" />
        </div>
        <div class="col-6" >
            <h1 class="h3 text-danger">Error 404: Recurso no encontrado</h1>
            <p class="lead">El link ingresado no existe...</p>
        </div>
    </div>
</section>


<jsp:include page="WEB-INF/pages/comunes/footer.jsp"/>
<jsp:include page="WEB-INF/pages/comunes/finHTML.jsp"/>


