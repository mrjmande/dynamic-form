ready = ->
  $('#quantity-select').change ->
    qty = document.getElementById('quantity-select').value
    $.ajax
      complete: (request) ->
      data: { quantity: qty }
      console.log(qty)
      $('#participant-names').load(location.href+" #participant-names")
    return
    
  return  
$(document).ready(ready) 