document.addEventListener("DOMContentLoaded", function(event) {

  var quantityFormInputs = document.querySelectorAll(".price-input");

  quantityFormInputs.forEach(function(input){
    input.addEventListener("change", function(event) {
      if (input.value < 0) {
        input.value = 0;
      }
      calculateRowTotal(event, this)
      calculateTableTotal(event, this)
      calculateGrandTotal()
    })
  });

});

function calculateRowTotal(event, input) {
  var currentProductId = input.dataset.target
  var productPrice = Number(document.getElementById(event.currentTarget.dataset.target + "-price").innerText)


  var allSizeInputs = input.parentNode.parentNode.querySelectorAll('input#js-product-quantity-' + currentProductId)
  var totalQuantity = 0;
  allSizeInputs.forEach(function(inp) {
    totalQuantity += Number(inp.value)
  })

  var totalDisplay = document.getElementById(event.currentTarget.dataset.target + "-total")
  totalDisplay.innerHTML = totalQuantity * productPrice
}

function calculateGrandTotal() {
  var sum = 0;
  document.querySelectorAll('.row-total').forEach(function(item) {
    var rowTotal = Number.parseInt(item.innerText)
    if (!isNaN(rowTotal)) {
      sum += rowTotal
    }
    document.getElementById('accumulative-total').innerText = sum
  })
}

function calculateTableTotal(event, input) {
  var table = input.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode // 6 levels up
  console.log(table)
  var sum = 0;

  table.querySelectorAll('.row-total').forEach(function(total) {
      sum += Number(total.innerText)
      table.querySelector(".table-total").innerText = sum
  })
}

