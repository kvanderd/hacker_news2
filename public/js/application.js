$(document).ready(function() {

  $(".upvote").on("click", function(e) {
     e.preventDefault();
     var vote = $(this);
     $.ajax({
      method: "post",
      url: vote.attr('href')
     }).done(function(response) {
      debugger;
        console.log('Response: ' + response);
        window.location.replace("/"); 
     });
  });
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
});

