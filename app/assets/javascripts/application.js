// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery.ui.all
//= require_tree .

//Para conectar listas a las que ya estan y poder intercambiar cosas de listas 
$(function() {
 	//Ordenar columnas
 	$( ".sortable_column" ).sortable({items: "> div",
 		opacity: 0.9 ,
 		revert: true,
 		scroll: true,
 		// update: function(){
 		// 	$.ajax({
 		// 		url: '/tasks/sort',
 		// 		type: 'post',
 		// 		data: $('#books').sortable('serialize'),
 		// 		dataType: 'script',
 		// 		complete: function(request){
 		// 			$('#books').effect('highlight');
 		// 		}
 		// 	});
 		// }
 	}).disableSelection();
    //Ordenar tasks
    $( ".sortable_task" ).sortable({items: "> div"},{opacity: 0.7 },{connectWith: ".sortable_task"}).disableSelection();

    $(document).on("click",'#addNewTask',function(e){
    	e.preventDefault();
    	var newCo = $('<li>New Callout</li>').draggable(draggable_opts);
    	$('#sph-callout-portlet-avail').append(newCo);
    });

});

