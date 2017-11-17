document.addEventListener("DOMContentLoaded", function(event) {

  const quantityFormInputs = document.querySelectorAll(".price-input");
  quantityFormInputs.forEach(function(input){
    input.addEventListener("change", function(event) {
      calculateRowTotal(event)
      // calculateBrandTotal()
      calculateTableTotal()
    })
  });

});

function calculateRowTotal(event) {
  let multiplier = Number.parseInt(event.currentTarget.value)

  let productPrice = Number.parseInt(document.getElementById(`${event.currentTarget.dataset.target}-price`).innerText, 10);

  let total = multiplier * productPrice

  document.getElementById(`${event.currentTarget.dataset.target}-total`).innerHTML = total
}

function calculateTableTotal() {
  let sum = 0;
  document.querySelectorAll('.row-total').forEach((item) => {
    let rowTotal = Number.parseInt(item.innerText)
    if (!isNaN(rowTotal)) {
      sum += rowTotal
    }
    document.getElementById('accumulative-total').innerText = sum
  })
}

// function calculateBrandTotal() {
//   let sum = 0;
//   document.querySelectorAll('.product-card').forEach((item) => {
//       let rowTotal = Number.parseInt(document.getElementById(`${item.dataset.target}-total`))
//       if (!isNaN(rowTotal)) {
//         sum += rowTotal
//       }
//       document.querySelectorAll(".accumulative-total-brand").innerText = sum
//   })
// }

