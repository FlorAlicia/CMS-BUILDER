<!--==============================
  =						CUSTOM
 ================================-->

<div class="<?php if ($module->width_module == "100"): ?> col-lg-12 <?php endif ?><?php if ($module->width_module == "75"): ?> col-lg-9 <?php endif ?><?php if ($module->width_module == "50"): ?> col-lg-6 <?php endif ?><?php if ($module->width_module == "33"): ?> col-lg-4 <?php endif ?><?php if ($module->width_module == "25"): ?> col-lg-3 <?php endif ?> col-12 mb-3 position-relative">

	<?php if ($_SESSION["admin"]->rol_admin == "superadmin"): ?>

		<div class="position-absolute border rounded" style="top:0; right:12px; z-index:100">
			
			<button type="button" class="btn btn-sm text-muted rounded m-0 px-1 py-0 border-0 myModule" item='<?php echo json_encode($module) ?>' idPage="<?php echo $page->results[0]->id_page ?>">
				<i class="bi bi-pencil-square"></i>
			</button>

			<button type="button" class="btn btn-sm text-muted rounded m-0 px-1 py-0 border-0 deleteModule" idModule=<?php echo base64_encode($module->id_module) ?> >
				<i class="bi bi-trash"></i>
			</button>


		</div>
		
	<?php endif ?>

	<!--==============================
	  =				START CUSTOM
	 ================================-->
	<div class="card rounded">
		
		<div class="card-header">
				<h3 class="card-title">Progress Bars</h3>
		</div>

		<div class="card-body">

			<?php for ($i=0; $i < 4; $i++):?>
			
			<div class="progress mb-3">
				<div class="progress-bar bg-success" role="progress-bar" aria-valuenow="0" aria-voluemax="100" style="width: 40%">
						<span class="sr-only">40% Complete (succes)</span>
				</div>
			</div>
			<div class="progress mb-3">
				<div class="progress-bar bg-info" role="progress-bar" aria-valuenow="20" aria-voluemin="0" aria-voluemax="100" style="width: 20%">
						<span class="sr-only">20% Complete</span>
				</div>
			</div>
			<div class="progress mb-3">
				<div class="progress-bar bg-warning" role="progress-bar" aria-valuenow="60" aria-voluemin="0" aria-voluemax="100" style="width: 60%">
						<span class="sr-only">60% Complete (warning)</span>
				</div>
			</div>
			<div class="progress mb-3">
				<div class="progress-bar bg-danger" role="progress-bar" aria-valuenow="80" aria-voluemin="0" aria-voluemax="100" style="width: 60%">
						<span class="sr-only">80% Complete</span>
				</div>
			</div>
			<?php endfor ?>

		</div>
	
	</div>
	
</div>