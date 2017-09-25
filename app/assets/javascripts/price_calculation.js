$(function(){
  $("#order_delivery_time").change(function(){
    var delivery_slot = $(this).val();
    var base_price = 2.00
    if (delivery_slot == "Express") {
      base_price = base_price + 2.00;
    }
    else if (delivery_slot == "Overnight (before 7AM)") {
      base_price = base_price + 1.00;
    }
    else if (delivery_slot == "7:00-8:00 PM") {
      base_price = base_price;
    }
    else if (delivery_slot == "10:00-11:00 PM") {
      base_price = base_price + 0.50;
    }
    else {
      base_price = 0.0;
    }
    $("#price").text("$" + base_price);
    console.log(base_price);
  });
});
