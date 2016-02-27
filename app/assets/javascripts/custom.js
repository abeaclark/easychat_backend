$(document).ready(function() {
  console.log($('addShiftButton'))


  $('.addShiftButton').click(function(){
    var currentButton = this;

    var dateTime = $(this).attr('beginning')
    console.log(dateTime)

  $.post( "/shifts", { shift: {start_time: dateTime, user_id: 1}})
    .done(function( data ) {
      alert( "Data Loaded: " + data );
  });

  });

});

// this.replaceWith();