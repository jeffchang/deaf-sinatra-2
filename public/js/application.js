window.onload = function() {
  $('#grandma').on('submit', function(event) {  
    
    event.preventDefault();

    var url = $(this).attr("action");
    var data = $(this).serialize();
    
    $.post(url, data, function(response) {
      $(response).appendTo(".replies");
    });
  });
};
