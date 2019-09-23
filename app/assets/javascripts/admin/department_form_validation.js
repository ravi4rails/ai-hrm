$(document).ready(function(){
  $("#department_form").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'department[name]' : "required",
      'department[established_from]' : "required"
    },
    messages: { 
      'department[name]' : "Please enter department name",
      'department[established_from]' : "Please enter date of established"
    }
  });
});  