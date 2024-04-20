<?php
require_once('Connections/conexion.php');

function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (version_compare(PHP_VERSION, '6.0.0', '<')) {
    $theValue = stripslashes($theValue);
}


    global $conexion;
    $theValue = mysqli_real_escape_string($conexion, $theValue);

    switch ($theType) {
        case "text":
            $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
            break;    
        case "long":
        case "int":
            $theValue = ($theValue != "") ? intval($theValue) : "NULL";
            break;
        case "double":
            $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
            break;
        case "date":
            $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
            break;
        case "defined":
            $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
            break;
    }
    return $theValue;
}

mysqli_select_db($conexion, $database_conexion);
$query_promocion = "SELECT * FROM productos_promociones ORDER BY productos_promociones.id_producto DESC";
$promocion = mysqli_query($conexion, $query_promocion) or die(mysqli_error($conexion));
$row_promocion = mysqli_fetch_assoc($promocion);
$totalRows_promocion = mysqli_num_rows($promocion);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="title" content="Garcia Auto partes / Iluminación Automotriz servicio pesado e Industrial en guadalajara">
<META NAME="audience" CONTENT="All">
<META NAME="Rating" CONTENT="General">
<meta name="language" content="Spanish" />
<meta name="distribution" content="Global" />
<meta http-equiv="pragma" content="no-cache" />
<meta name="searchtitle" content="Iluminación Automotriz servicio pesado e Industrial," />
<META NAME="keywords" CONTENT="'Iluminación Automotriz servicio pesado e Industrial',">
<META NAME="description" CONTENT="Iluminación Automotriz servicio pesado e Industrial,">
<title>Garcia Auto partes / Iluminación Automotriz servicio pesado e Industrial en guadalajara</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="apple-mobile-web-app-capable" content="yes" />
<link href="estilos/base.css" rel="stylesheet" type="text/css" />
<link href="estilos/pc.css" rel="stylesheet" type="text/css" media="screen and (min-width: 981px)"/>
<link href="estilos/tablet.css" rel="stylesheet" type="text/css" media="screen and (min-width: 481px) and (max-width: 980px)" />
<link href="estilos/celulares.css" rel="stylesheet" type="text/css" media="screen and (max-width: 480px)" />
<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet" href="estilos/animate.css" />
<script src="js/jquery.js"></script>
<script src="js/escroll_suave.js"></script>
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/menu_tablet_cel.js"></script>
<!-------------------------------------------- CHAT --------------------------------------------->
<script type="text/javascript">
window.$zopim||(function(d,s){var z=$zopim=function(c){z._.push(c)},$=z.s=
d.createElement(s),e=d.getElementsByTagName(s)[0];z.set=function(o){z.set.
_.push(o)};z._=[];z.set._=[];$.async=!0;$.setAttribute('charset','utf-8');
$.src='//cdn.zopim.com/?10JycZwgyrUM2tmanX9lz778ozQqQ3VQ';z.t=+new Date;$.
type='text/javascript';e.parentNode.insertBefore($,e)})(document,'script');
</script>
<!-------------------------------------------- CONTADOR DE VISITAS ------------------------------->
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-38461121-1']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
<!-------------------------------------------- ZOOM -------------------------------------------->
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/jquery.lightbox-0.5.js"></script>
<link rel="stylesheet" type="text/css" href="jquery.lightbox-0.5.css" media="screen" />
<!-- / fim dos arquivos utilizados pelo jQuery lightBox plugin -->
<!-- Ativando o jQuery lightBox plugin -->
<script type="text/javascript">
$(function() {
    $('.gallery a').lightBox();
});
</script>
<style type="text/css">
/* jQuery lightBox plugin - Gallery style */
.gallery {}
</style>
<!----------------------------------- BOTON DISPOSITIVOS MOVILES --------------------------------->
</head>
<body>
<?php include('whatsapp.php'); ?>
<div id="pagina">
<!-------------------------------------------- CABEZERA --------------------------------------------->
<div id="cabezera">
<div id="contenido_cabezera">
<div class="caja_1" >
<div class="logo" ><img src="imagenes/logo.png" width="100%"/></div>
<div class="datos_pag" >
<?php include('datos.php'); ?>
</div>
</div>

<div class="titu_cata Texto_top_blanco display-pc display-tablet"><strong>CATALOGO</strong></div>
<div id="menu_botones" align="center" class="display-pc">
<ul id="botones">
<li><a href="index.php">INICIO</a></li>
<li><a href="nosotros.php">NOSOTROS</a></li>
<li><a href="productos.php">PRODUCTOS EN OFERTA</a></li>
<li><a href="contacto.php">CONTACTO</a></li>
</ul>
</div>
<div id="botones" align="right" class="display-tablet display-celulares"><img src="imagenes/boton_menu_mobil.png" width="29" height="22" id="boton"/></div>
<div class="titu_cata Texto_top_blanco display-celulares"><strong>CATALOGO</strong></div>
</div>
</div>
<!------------------------------------------- CONTENIDOS ------------------------------------------->
<div id="cont" class="display-pc display-tablet display-celulares">
<div id="info">
<div class="caja_boton_submenu_des">
<div id="boton_submenu_des"><a href="#" class="Texto">Descargar Lista de precios en Excel</a></div>
<div id="boton_submenu_des"><a href="#" target="_blank" class="Texto">Descargar Lista de precios en PDF</a></div><br />
<span class="Texto">Precios mas Iva</span>
</div>

<?php
while ($row_promocion) {
?>
<div class="pro">
<div class="pro_foto gallery"><a href="fotos_promociones/<?php echo $row_promocion['foto']; ?>"><img src="fotos_promociones/<?php echo $row_promocion['foto']; ?>" width="100%" border="0" /> </a></div>
<div class="pro_texto">
<span class="Texto_precio">$ <?php echo $row_promocion['precio']; ?> </span>
<span class="Texto_marca"> Serie : <?php echo $row_promocion['serie']; ?></span><br/>
<span class="Texto_marca"><?php echo $row_promocion['nombre']; ?></span><br/>
<span class="Texto"><?php echo $row_promocion['descripcion']; ?></span><br/>
<img src="fotos_productos/<?php echo $row_promocion['imagen_blanco']; ?>" width="19" height="18" />
<img src="fotos_productos/<?php echo $row_promocion['imagen_amarillo']; ?>" width="19" height="18" />
<img src="fotos_productos/<?php echo $row_promocion['imagen_naranja']; ?>" width="19" height="18" />
<img src="fotos_productos/<?php echo $row_promocion['imagen_azul']; ?>" width="19" height="18" />
<img src="fotos_productos/<?php echo $row_promocion['imagen_verde']; ?>" width="19" height="18" />
</div>
</div>
<?php
$row_promocion = mysqli_fetch_assoc($promocion);
}
?>
<!------------------------------------------------------------------------------->
</div>
</div>
<!----------------------------------------- PIE DE PAGINA ------------------------------------------>
<div id="pie" class="display-pc">
<div id="pie_info"><?php include('pie.php'); ?></div>
</div>
<div id="pie" class="display-tablet display-celulares">
<div id="pie_info"><?php include('estilos/pie_tablet_celulares.php'); ?></div>
</div>
<!----------------------------------------- DERECHOS ------------------------------------------>
<div id="derechos" class="display-pc">
<div id="derechos_info"><?php include('derechos.php'); ?></div>
</div>
<!--------------------------------------------- FINAL ---------------------------------------------->
</div>
<?php include('menu_tablet_cel.php'); ?>
<script src="js/wow.min.js"></script>
<script> new WOW().init(); </script>
</body>
</html>
<?php
mysqli_free_result($promocion);
?>
