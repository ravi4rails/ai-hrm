$(document).ready(function(){
  $("#educational_credential_form").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'educational_credential[course]' : "required",
      'educational_credential[board_or_university]' : "required",
      'educational_credential[city]' : "required",
      'educational_credential[marks]' : "required"
    },
    messages: { 
      'educational_credential[course]' : "Please enter course",
      'educational_credential[board_or_university]' : "Please enter board_or_university",
      'educational_credential[city]' : "Please enter city",
      'educational_credential[marks]' : "Please enter marks"
    }
  });
});  