<div class="card rounded border-0 shadow mb-3 pb-3">
	
	<div class="card-body">

		<label for="<?php echo $module->columns[$i]->title_column ?>" class="form-label float-start text-capitalize">
			<?php echo $module->columns[$i]->alias_column ?>:
		</label>
		<span class="float-end badge badge-default border small rounded text-muted">
			<?php echo $module->columns[$i]->type_column ?>
		</span>
		<div class="clearfix"></div>

		<?php 

	
		
		include "forms/text.php"; /* Formulario de tipo Texto */
		
		include "forms/textarea.php"; /* Formulario de tipo TextoArea */
		
		include "forms/int.php"; /* Formulario de tipo Número Entero */
		
		include "forms/double.php"; /* Formulario de tipo Número con decimal */

		include "forms/select.php"; /* Formulario de tipo Selección */
		
		include "forms/boolean.php"; /* Formulario de tipo Boleano */

		include "forms/array.php"; /* Formulario de tipo Arreglo */

		include "forms/object.php"; /* Formulario de tipo Objeto */
		
		include "forms/_json.php"; /* Formulario de tipo JSON */
		
		include "forms/file.php"; /* Formulario de tipo Archivo, Imagen, Video */

		include "forms/color.php"; /* Formulario de tipo Color */
		
		include "forms/date.php"; /* Formulario de tipo Fecha */
		
		include "forms/time.php"; /* Formulario de tipo Tiempo */
		
		include "forms/datetime.php"; /* Formulario de tipo Fecha y Tiempo */

		include "forms/timestamp.php"; /* Formulario de tipo Fecha y Tiempo Automático */

		include "forms/code.php"; /* Formulario de tipo Código */

		include "forms/password.php"; /* Formulario de tipo PASSWORD */

		include "forms/email.php"; /* Formulario de tipo email */
		
		include "forms/relations.php"; /* Formulario de tipo relación */
		
		/* include "forms/chatgpt.php"; Formulario de tipo relación */
		?>


		
	
	</div>

</div>