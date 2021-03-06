<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="ValidarAdmin.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="css/style.css" type="text/css" />
       <script type="text/javascript" src="js/plugins/jquery-1.7.min.js"></script>
        <link rel="stylesheet" href="css/style.css" type="text/css" />
        <link rel="stylesheet" href="datapicker/jquery-ui.css" />
        <link rel="stylesheet" media="all" type="text/css" href="css/jquery-ui-timepicker-addon.css" />
        
        <script type="text/javascript" src="js/plugins/jquery-ui-1.8.16.custom.min.js"></script>
        <script type="text/javascript" src="js/plugins/jquery-ui-timepicker-addon.js"></script>
        <script type="text/javascript" src="js/plugins/jquery-ui-sliderAccess.js"></script>
        <script type="text/javascript" src="js/plugins/jquery.validate.min.js"></script>
        <script type="text/javascript" src="js/plugins/error.js"></script>
        
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="mainwrapper">
            <div class="mainwrapperinner">
                <%@include file="left.jsp" %>
                <div class="maincontent noright">
                    <a href="horarios.jsp" class="stdform"><button class="submit radius2 ">Volver</button></a>
                    <div class="content">
                        <div class="maincontentinner">
                            <div class="content">
                                <div class="contenttitle">
                                    <h2 class="form"><span>Agregue un horario</span></h2>
                                </div>
                                <br>
                                <form action="procesaAgregaHorario.jsp" method="post" class="stdform" id="form1">
                                    <p>
                                        <label>Horario</label>
                                        <span class="field">
                                            <input type="text" class="longinput required"  id="horario" name="horario" />
                                        </span>
                                    </p>
                                    <p>
                                        <label>Precio</label>
                                        <span class="field"><input type="text" class="longinput required number" id="precio" name="precio"></span>
                                    </p>                                    
                                    <p class="stdform">
                                        <button class="submit submit2 radius2">Agregar</button>
                                    </p>
                                </form>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>

        <script>
            $('#horario').timepicker({
                hourMin: 0,
                hourMax: 24,
                timeFormat: 'HH:mm:ss',
                second:0
               
            });
        </script>		
    </body>
</html>

