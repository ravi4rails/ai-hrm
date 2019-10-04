$(document).ready(function(){
  $("#bank_detail_form").validate({
    error: function(label) {
      $(this).addClass("error");
    },
    rules: {
      'bank_detail[branch]' : "required",
      'bank_detail[ifsc_code]' : "required",
      'bank_detail[account_number]' : {
        number: true,
        required: true
      },
      'bank_detail[bank_name]' : {
        regx: /^[a-zA-Z\s]+$/
      }
    },
    messages: { 
      'bank_detail[branch]' : "Please enter Branch",
      'bank_detail[ifsc_code]' : "Please enter ifsc code",
      'bank_detail[account_number]' : {
        required: "Please enter Account Number",
        number: "Please enter number only"
      },
    }
  });
  $.validator.addMethod("regx", function(value, element, regexpr) {
    return regexpr.test(value);
  }, "Please enter character only");
});  