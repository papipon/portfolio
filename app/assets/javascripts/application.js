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
//= require jquery
//= require_tree .
$(function() {
  var img = $('#mobile1');
  function rotate() {
    img.animate({rotate: '360'}, 80000, 'linear', function() {
      rotate();
    });
  }
  rotate();
});
$(function(){
    var setImg = '#photo';
    var fadeSpeed = 1600;
    var switchDelay = 3500;

    $(setImg).children('img').css({opacity:'0'});
    $(setImg + ' img:first-child').stop().animate({opacity:'1',zIndex:'20'},fadeSpeed);

    setInterval(function(){
        $(setImg + ' :first-child')
        .animate({opacity:'0'},fadeSpeed)
        .next('img')
        .animate({opacity:'1'},fadeSpeed)
        .end()
        .appendTo(setImg);
    },switchDelay);

});
