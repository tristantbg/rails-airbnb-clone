//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-switch
//= require_tree .

$("[name='freelance-response']").bootstrapSwitch({
    size: 'small',
    onText: '<i class="fa fa-circle"></i>',
    offText: '<i class="fa fa-circle"></i>',
    labelText: '<i class="fa fa-circle"></i>'
});

$('input[name="freelance-response"]').on('switchChange.bootstrapSwitch', function(event, state) {
    console.log(this); // DOM element
    console.log(event); // jQuery event
    console.log(state); // true | false
});