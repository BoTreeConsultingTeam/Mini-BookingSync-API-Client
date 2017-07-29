$( document ).on('turbolinks:load', function() {
  $('#booking_start_at').datetimepicker({
    sideBySide: true,
    format: 'MM/DD/YYYY hh:mm A'
  });
  $('#booking_end_at').datetimepicker({
    sideBySide: true,
    useCurrent: false,
    format: 'MM/DD/YYYY hh:mm A'
  });
  $("#booking_start_at").on("dp.change", function (e) {
    $('#booking_end_at').data("DateTimePicker").minDate(e.date);
    calculate_total_cost();
  });
  $("#booking_end_at").on("dp.change", function (e) {
    $('#booking_start_at').data("DateTimePicker").maxDate(e.date);
    calculate_total_cost();
  });
  $("#booking_daily_rate").on("change",function(){
    calculate_total_cost();
  });
});

function calculate_total_cost(){
  if($("#booking_start_at").val() && $("#booking_end_at").val() && $('#booking_daily_rate').val()){
    start_date = new Date($("#booking_start_at").val());
    end_date = new Date($("#booking_end_at").val());
    daily_rate = $('#booking_daily_rate').val();
    diff_date = (end_date - start_date)/ (1000 * 3600 * 24);
    var value = Math.round(diff_date) * daily_rate
    value = value < 0 ? 0 : value
    $('#booking_price').attr('value', value);
  }
}