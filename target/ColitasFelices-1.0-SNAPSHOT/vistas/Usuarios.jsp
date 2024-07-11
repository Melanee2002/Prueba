<%-- 
    Document   : Usuarios
    Created on : 3 jul. 2024, 18:05:33
    Author     : josel
--%>

<%@page import="java.util.List"%>
<%@page import="com.zegel.vet.colitasfelices.model.Login"%>
<%@page import="com.zegel.vet.colitasfelices.dao.UsuariosDao"%>
<%@page import="com.zegel.vet.colitasfelices.conexion.Conexion" %>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Sistema Veterinaria</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="../css/stylesp.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <%!
            Conexion conexion = new Conexion();
            UsuariosDao usuariosDao = new UsuariosDao(conexion);
        %>
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="index.html">VT Colitas Felices</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>
            <!-- Barra Usuario-->
            <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="index.jsp">Cerrar Sesion</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <div class="sb-sidenav-menu-heading">Principal</div>
                            <a class="nav-link" href="menu.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Menu Principal
                            </a>
                            <div class="sb-sidenav-menu-heading">Gestiones</div>
                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Clientes
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
                                <nav class="sb-sidenav-menu-nested nav">
                                    <a class="nav-link" href="Clientes.jsp">Clientes</a>
                                    <a class="nav-link" href="#">Mascotas</a>
                                </nav>
                            </div>
                            <div class="sb-sidenav-menu-heading">Gestiones</div>
                            <a class="nav-link" href="vistas/Usuarios.jsp">
                                <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                                Usuarios
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Gestion Usuarios</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active"></li>
                        </ol>
                        <div class="row">
                            <div class="col-xl-3 col-md-6">
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="row">
                                <div class="col-8"><h3> Usuarios</h3></div>
                                <div class="col-4 aling-self-center">
                                    <div class="d-grid gap-2">
                                        <button type="button" class="btn btn-outline-success" data-bs-toggle="modal" data-bs-target="#exampleModal">Agregar</button>
                                    </div>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-striped">
                                    <thead >
                                    <th>ID</th>
                                    <th>Nombres y Apellidos</th>
                                    <th>Correo Electronico</th>
                                    <th>Usuario</th>
                                    <th>Contrasena</th>
                                    </thead>
                                    <tbody>
                                        <%
                                            List<Login> lista = usuariosDao.mostrarUsuario();

                                            for (Login elem : lista) {


                                        %>
                                        <tr>
                                            <td class="id"><%=elem.getIdUsuarios()%></td>
                                            <td class="nombres"><%=elem.getNombres_Apellidos()%></td>
                                            <td class="correo"><%=elem.getCorreo_Electronico()%></td>
                                            <td class="usuario"><%=elem.getUsuario()%></td>
                                            <td class="password"><%=elem.getPassword()%></td>
                                            <td>
                                                <button type="button" class="btn btn-outline-warning">Editar</button>
                                                <button type="button" class="btn btn-outline-danger">Eliminar</button>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog  ">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title fs-5" id="exampleModalLabel">Nuevo Usuario</h1>
                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <form action="${pageContext.servletContext.contextPath}/UsuariosServlet" method="post" role="form">
                                                <div class="row">
                                                    <div class="col-6">
                                                        <label>Codigo</label>
                                                        <input type="text" name="txtCodigo" class="form-control" id="txtCodigo" value="0" readonly="true">
                                                    </div>
                                                    <div class="col-6">
                                                        <label>Nombre</label>
                                                        <input type="text" name="txtNombre" class="form-control" id="txtNombre">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <label>Correo</label>
                                                        <input type="text" name="txtCorreo" class="form-control" id="txtCorreo">
                                                    </div>
                                                    <div class="col-6">
                                                        <label>Usuario</label>
                                                        <input type="text" name="txtUsuario" class="form-control" id="txtUsuario">
                                                    </div>
                                                    <div class="col-6">
                                                        <label>Contraseña</label>
                                                        <input type="text" name="txtContrasena" class="form-control" id="txtContrasena">
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">                                                    
                                                    <div class="col-12">
                                                        <button type="submit" name="btonguardar" class="btn btn-success">Guardar</button>
                                                        <button type="button" class="btn btn-info" data-bs-dismiss="modal">Cancelar</button>
                                                    </div>
                                                </div>
                                            </form>                           
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted"> &copy;Colitas Felices 2024</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="../js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="../js/datatables-simple-demo.js"></script>
        <%
            if (request.getAttribute("message") != null) {


        %>
        <script> alert('<%= request.getAttribute("message") %>')</script>
        <%            }

        %>
    </body>
</html>

