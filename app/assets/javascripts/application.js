//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .

$(".alert" ).fadeOut(3000);

var thumbnails = document.querySelectorAll('.product-image-small');
var highlight = document.getElementById('highlight')

thumbnails.forEach(function(thumbnail){
  thumbnail.addEventListener('click', function(event){
    var target = event.currentTarget.dataset.target;
    console.log(target)
    highlight.style.cssText = "background-image:url(" + target + ")";
  })
})
