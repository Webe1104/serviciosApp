// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require jquery_ujs
//= require materialize
//= require materialize-sprockets
//= require_tree .

$(document).ready(function() {
  // $('[data-js-hide-link]').click(function(event){
  //   alert('You clicked the Hide link');
  //   event.preventDefault(); 
  // });
  materialize_init();
})

function materialize_init(){
	$('.dropdown-trigger').dropdown();
	$('.sidenav').sidenav();
}

function openMenu(){
	console.log('abriendo el menu');
	var a = document.getElementById('slide-out');
	$('.sidenav').sidenav('open');
	var instance = M.Sidenav.getInstance(a);
	var instance2 = M.Sidenav.getInstance(document.getElementById('slide-out'));
	console.log(a,instance, instance2);
	instance.open();
}