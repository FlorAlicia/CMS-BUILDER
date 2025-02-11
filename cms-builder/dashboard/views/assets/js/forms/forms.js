/*=============================================
Validación de formularios desde bootstrap
=============================================*/

// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();

/*========================================
=            ACTIVAR SELECT 2            =
========================================*/

if($('.select2').length > 0){

  $('.select2').select2({
    width: '100%',
    theme: 'bootstrap4'   
  });

}

/*==========================================
=            ACTIVAR TAGS INPUT            =
==========================================*/

if($('.tags-input').length > 0){

  $('.tags-input').tagsinput();

}

/*==========================================
=          ACTIVAR DATETIMEPICKER          =
==========================================*/

  if($('.datepicker').length > 0){

  /*===========================================
  =     ACTIAR DATETIMEPICKER PARA FECHAS     =
  ===========================================*/
    $('.datepicker').datetimepicker({
      timepicker:false,
      format:'Y-m-d'
    })

  }


if($('.timepicker').length > 0){
  /*============================================
  =     ACTIVAR DATETIMEPICKER PARA TIEMPO     =
  ============================================*/

  $('.timepicker').datetimepicker({
      datepicker:false,
      format:'H:i'
    })

  }


if($('.timepicker').length > 0){
  /*============================================
  = ACTIVAR DATETIMEPICKER PARA FECHA Y TIEMPO =
  ============================================*/
  $('.datetimepicker').datetimepicker({
      format:'Y-m-d H:i'
    })

  }

/*==========================================
=            ACTIVAR SUMMERNOTE            =
==========================================*/

if($('.summernote').length > 0){

  $('.summernote').summernote({
    minHeight: 300,
    prettifyHtml:false,
    followingToolbar: true,
    codemirror: { // codemirror options
        mode: "text/html",
        styleActiveLine: true,
        lineNumbers: true,
        lineWrapping: true,
        theme: "monokai"
    },
    toolbar:[
      ['misc', ['codeview', 'undo', 'redo']],
      ['style', ['bold', 'italic', 'underline', 'clear']],
      ['para', ['style', 'ul', 'ol', 'paragraph', 'height']],
      ['fontsize', ['fontsize']],
      ['color', ['color']],
      ['insert', ['link','picture', 'hr','video','table','emoji']],
    ]

  })

}
/*=============================================
=  ADICIONAR ICONOS AL TOOLBAR DE SUMMERNOTE  =
=============================================*/

if($(".note-toolbar").length > 0){

  $(".emoji-picker").removeClass("fa");
  $(".emoji-picker").removeClass("fa-smile-o");

  $(".emoji-picker").addClass("far");
  $(".emoji-picker").addClass("fa-smile");

}

/*=============================================
=        AJUSTES AL MODAL DE SUMMERNOTE       =
=============================================*/
if($(".note-modal[aria-label='Insert Image']").length > 0){

  $(".note-modal[aria-label='Insert Image']").find(".close").attr("data-bs-dismiss","modal");
  
  $(".note-modal[aria-label='Insert Image']").find(".note-group-select-from-files").remove();
   
}

if($(".note-modal[aria-label='Insert Video']").length > 0){

  $(".note-modal[aria-label='Insert Video']").find(".close").attr("data-bs-dismiss","modal");
   
}

/*====================================================
=            VALIDAR CAMPOS DE FORMULARIO            =
====================================================*/

function validateJS(event, type) {

  $(event.target).parent().addClass("was-validated");

  /*=====================================
  =            Validar email            =
  =====================================*/

  if (type == "email") {
    var pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9_-]+\.[a-zA-Z]{2,4}$/; 

    if (event.target.value.trim() === "") {
      return; // No validar si el campo está vacío
    }

    if (!pattern.test(event.target.value)) { 
      $(event.target).parent().children(".invalid-feedback").html("El email está mal escrito");
      event.target.value = "";
      return; // Salir de la función después de detectar el error
    }
  }
}

/*===============================================
=            RECORDAR EMAIL EN LOGIN            =
===============================================*/

function rememberEmail(event){
  
  if(event.target.checked){

    localStorage.setItem("emailRemember", $("#email_admin").val());
    localStorage.setItem("checkRemember", true);

  }else{

    localStorage.removeItem("emailRemember");
    localStorage.removeItem("checkRemember");
  
  }

} 

/*============================================
=            Capturar email login            =
============================================*/

function rememberLogin(){

  if(localStorage.getItem("emailRemember") != null){

    $("#email_admin").val(localStorage.getItem("emailRemember"));

  }

  if(localStorage.getItem("checkRemember") != null && localStorage.getItem("checkRemember")){

    $('#remember').attr("checked", true);
  
  }

}

rememberLogin();

/*==============================================
=            FUNCIÓN VER CONTRASEÑA            =
==============================================*/

$(document).on("click", ".viewPass", function(){

  if($(this).attr("state") == "locked"){

    $(this).removeClass("bi-eye-slash");
    $(this).addClass("bi-eye");
    $(this).attr("state", "view");
    $("#password_admin").attr("type","text")
  
  }else{

    $(this).addClass("bi-eye-slash");
    $(this).removeClass("bi-eye");
    $(this).attr("state", "locked");
    $("#password_admin").attr("type","password")
 
  }
})

