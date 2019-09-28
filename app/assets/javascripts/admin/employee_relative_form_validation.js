$(document).ready(function(){
  $("#employee_relative_form").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'employee_relative[name]' : "required",
      'employee_relative[contact]' : "required",
      'employee_relative[address]' : "required",
      'employee_relative[relation]' : "required"
    },
    messages: { 
      'employee_relative[name]' : "Please enter name",
      'employee_relative[contact]' : "Please enter contact",
      'employee_relative[address]' : "Please enter address",
      'employee_relative[relation]' : "Please enter relation"
    }
  });
});  