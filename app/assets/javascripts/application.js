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
//= require_tree .
$(function(){
	$(".addresses").hover(function(){
		$(".addresses").animate({fontSize:"30px"});
	});
};
$(function(){
	$(".tasklists").hover(function(){
		$(".tasklists").animate({fontSize:"30px"});
	});
};
$(function(){
	$(".newaddress").hover(function(){
		$(".newaddress").animate({fontSize:"30px"});
	});
};
$(function(){
	$(".newtasklist").hover(function(){
		$(".newtasklist").animate({fontSize:"30px"});
	});
};
$(function(){
	$(".logout").hover(function(){
		$(".logout").animate({fontSize:"30px"});
	});
};