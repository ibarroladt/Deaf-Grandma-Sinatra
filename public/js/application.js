$(document).ready(function() {
  $('form').submit(function(event){
    event.preventDefault();
    var serial = $('form').serialize();
  
    $.post('/grandma', serial,function(response){
      if($('#grandma_response')) $('#grandma_response').remove();
      $('h1').after(response);
    });
    /* Act on the event */
  });
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});
