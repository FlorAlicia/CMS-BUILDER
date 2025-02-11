<?php 

/*==================================================
=            CAPTURAR DATOS PARA EDITAR            =
==================================================*/
$data = null;

if(!empty($routesArray[2])){
	
	

	$url = $module->title_module."?linkTo=id_".$module->suffix_module."&equalTo=".base64_decode($routesArray[2]);
	$method = "GET";
	$fields = Array();

	$data = CurlController::request($url,$method,$fields);

	if($data->status == 200){

		$data =  json_decode(json_encode($data->results[0]),true);
		
	}
}


/*===========================================================
=            Definiendo los bloques del registro            =
===========================================================*/

$block1 = ceil(count($module->columns)/2);
$block2 = count($module->columns) - $block1;

 ?>
<div class="col">
	
	<form method="POST" class="needs-validation" novalidate>
		
		<?php 

			require_once "controllers/dynamic.controller.php";
			$manageData = new DynamicController();
			$manageData -> manage();

		 ?>
		<div class="card rounded">

			<input type="hidden" name="module" value='<?php echo json_encode($module) ?>'>

			<?php if (!empty($data) && empty($routesArray[3])): ?>
			
				<input type="hidden" name="idItem" value="<?php echo $routesArray[2] ?>">	
							
			<?php endif ?>
			
			<!--=====================================
			=	  			 CABECERA
			======================================-->
			
			<div class="card-header bg-white rounded-top py-3">
				
				<div class="d-flex justify-content-between">
					
					<div>
						<a href="/<?php echo $module->url_page ?>" class="btn btn-default border btn-sm rounded px-3">Regresar</a>		
					</div>

					<div>
						<button type="submit" class="btn btn-default btn-sm rounded backColor py-2 px-3">Guardar Registro</button>
					</div>

				</div>

			</div>

			<!--=====================================
			=	  			 CUERPO
			======================================-->

			<div class="card-body">
				
				<div class="row row-cols-1 row-cols-lg-2">
					
					<!--=====================================
					=	  			 BLOQUE 1
					======================================-->

					<div class="col">
						<?php for ($i = 0; $i < $block1; $i++): ?>
							
							<?php include "blocks/blocks.php" ?>	

						<?php endfor ?>						

					</div>

					<?php if ($block2 > 0): ?>

						<!--=====================================
						=	  			 BLOQUE 2
						======================================-->

						<div class="col">
							
							<?php for ($i = $block1; $i < count($module->columns); $i++): ?>
							
								<?php include "blocks/blocks.php" ?>	

							<?php endfor ?>	

						</div>

				<?php endif ?>

				</div>

			</div>

			<!--=====================================
			= 			 PÍE DE PÁGINA
			======================================-->

			<div class="card-footer bg-white rounded-bottom py-3">
				
				<div class="d-flex justify-content-between">
					
					<div>
						<a href="/<?php echo $module->url_page ?>" class="btn btn-default border btn-sm rounded px-3">Regresar</a>		
					</div>

					<div>
						<button type="submit" class="btn btn-default btn-sm rounded backColor py-2 px-3">Guardar Registro</button>
					</div>

				</div>

			</div>


		</div>

	</form>

</div>