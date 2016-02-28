$(document).ready(function() {
  console.log($('addShiftButton'))


  $('.addShiftButton').click(function(){
    $(this).replaceWith('<div class="calendar_times me"></div>');

    var dateTime = $(this).attr('beginning')

  $.post( "/shifts", { shift: {start_time: dateTime, user_id: 1}})
    .done(function( data ) {
    console.log('success')
  });

  });

});

