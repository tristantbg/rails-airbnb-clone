//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-switch
//= require_tree .

$("[name='freelance-response']").bootstrapSwitch({
    onText: '<i class="fa fa-check"></i>',
    offText: '<i class="fa fa-remove"></i>',
    labelText: '<i class="fa fa-question"></i>'
});

$('input[name="freelance-response"]').on('switchChange.bootstrapSwitch', function(event, state) {
    console.log(this); // DOM element
    console.log(event); // jQuery event
    console.log(state); // true | false
});