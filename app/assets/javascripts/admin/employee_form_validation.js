$(document).ready(function(){
  $("#employee_form").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'employee[first_name]' : "required",
      'employee[last_name]' : "required",
      'employee[email]' : "required",
      'employee[date_of_birth]' : "required",
      'employee[personal_contact]' : "required",
      'employee[emergency_contact]' : "required",
      'employee[address]' : "required",
      'employee[city]' : "required",
      'employee[state]' : "required",
      'employee[country]' : "required",
      'employee[zipcode]' : "required",
      'employee[job_title]' : "required",
      'employee[job_description]' : "required",
      'employee[date_of_joining]' : "required",
      'employee[gender]' : "required",
      'employee[marital_status]' : "required",
      'employee[blood_group]' : "required",
      'employee[religion]' : "required",
      'employee[employee_code]' : "required"
    },
    messages: { 
      'employee[first_name]' : "Please enter employee name",
      'employee[last_name]' : "Please enter lastname",
      'employee[email]' : "Please enter email",
      'employee[date_of_birth]' : "Please enter date of birth",
      'employee[personal_contact]' : "Please enter personal contact",
      'employee[emergency_contact]' : "Please enter emergency_contact",
      'employee[address]' : "Please enter address",
      'employee[city]' : "Please enter city",
      'employee[state]' : "Please enter state",
      'employee[country]' : "Please enter country",
      'employee[zipcode]' : "Please enter zipcode",
      'employee[job_title]' : "Please enter job_title",
      'employee[job_description]' : "Please enter job_description",
      'employee[date_of_joining]' : "Please enter date_of_joining",
      'employee[gender]' : "Please enter gender",
      'employee[marital_status]' : "Please enter marital_status",
      'employee[blood_group]' : "Please enter blood_group",
      'employee[religion]' : "Please enter religion",
      'employee[employee_code]' : "Please enter employee_code"
    }
  });
});  