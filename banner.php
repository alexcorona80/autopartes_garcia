<?php
require_once('Connections/conexion.php');

if (!function_exists("GetSQLValueString")) {
    function GetSQLValueString($conexion, $theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
    {
        // Para PHP 8 y versiones posteriores
        $theValue = stripslashes($theValue);
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
}

$query_banner = "SELECT * FROM banners";
$banner = mysqli_query($conexion, $query_banner) or die("Error en la consulta: " . mysqli_error($conexion));
 // Manejo de errores en la consulta
$row_banner = mysqli_fetch_assoc($banner);
$totalRows_banner = mysqli_num_rows($banner);
?>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" href="css/responsiveslides.css">
<link rel="stylesheet" href="demo.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- Agregar jQuery -->
<script src="css/responsiveslides.min.js"></script>
<script>
    $(function () {

      // Slideshow 1
      $("#slider1").responsiveSlides({
        maxwidth: 1920,
        speed: 800
      });

      // Slideshow 2
      $("#slider2").responsiveSlides({
        auto: false,
        pager: true,
        speed: 300,
        maxwidth: 540
      });

      // Slideshow 3
      $("#slider3").responsiveSlides({
        manualControls: '#slider3-pager',
        maxwidth: 540
      });

      // Slideshow 4
      $("#slider4").responsiveSlides({
        auto: false,
        pager: false,
        nav: true,
        speed: 500,
        namespace: "callbacks",
        before: function () {
          $('.events').append("<li>before event fired.</li>");
        },
        after: function () {
          $('.events').append("<li>after event fired.</li>");
        }
      });

    });
</script>
<div id="wrapper">
    <ul class="rslides" id="slider1">
        <?php 
        while ($row_banner) { 
        ?>
        <li><img src="fotos_banners/<?php echo $row_banner['foto']; ?>" alt=""></li>
        <?php 
            $row_banner = mysqli_fetch_assoc($banner);
        } 
        ?>
    </ul>
</div>
<?php
mysqli_free_result($banner);
?>
