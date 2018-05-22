$(document).ready(function(){
  $("#myInput").on("keyup", function() {

    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {

      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });

  $('#search_symbol').on('click', sales_data);
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });

});


// const sales_data = function (event) {
//   event.preventDefault();
//
//   let data = 1
//
//   // $.getJSON(`http://localhost:3001/ordersheets/${ data }.json`).done(function(json){
//   $.getJSON(`http://localhost:3001/ordersheets.json`).done(function(json){
//     $('#results1').text(json.order_total)
//   }).fail(function () {
//       alert('Something bad happened');
//     });
// }
