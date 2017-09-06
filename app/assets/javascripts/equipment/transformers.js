$(function() {
  var check_to_hide_add_link;
  check_to_hide_add_link = function() {
    if ($("#phases .nested-fields").length() === 1) {
      return $("#phases .links a").hide();
    } else {
      return $("#phases .links a").show();
    }
  };
  $("#phases").bind("cocoon:after-insert", function() {
    return check_to_hide_add_link();
  });
  $("#phases").bind("cocoon:after-remove", function() {
    return check_to_hide_add_link();
  });
  return check_to_hide_add_link();
});
