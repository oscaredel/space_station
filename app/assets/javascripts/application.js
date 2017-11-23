//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require_tree .

$(".alert" ).fadeOut(3000);

const thumbnails = document.querySelectorAll('.product-image-small');
const highlight = document.getElementById('highlight')

thumbnails.forEach(function(thumbnail){
  thumbnail.addEventListener('click', function(event){
    let target = event.currentTarget.dataset.target;
    console.log(target)
    highlight.style.cssText = "background-image:url(" + target + ")";
  })
})
