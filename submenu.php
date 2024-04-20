<?php require_once('Connections/Database.php'); ?>
<?php require_once('include/Menu.php'); ?>

<?php
$menu = new Menu();
?>
<ul id="submenu_botones">
<?php foreach ($menu->getMenu() as $m): ?>
    <li><a href="" class="Texto_submenu"><?php echo $m["nombre"]; ?></a>
        <ul class="submenu"> 
            <?php foreach ($menu->getSubMenu($m['id_categoria']) as $s): ?>
            <li><a href="catalogo.php?cat=<?php echo $s["id_subcategoria"]; ?>" class="Texto_blanco_submenu"><?php echo $s["nombre"]; ?></a></li>
            <?php endforeach; ?>
        </ul>
   </li>
<?php endforeach; ?>
</ul>