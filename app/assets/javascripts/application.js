//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-switch
//= require_tree .

$("[name='freelance-response']").bootstrapSwitch({
    size: 'small',
    onText: '<i class=""></i>',
    offText: '<i class="fa-circle"></i>',
    labelText: '<i class=""></i>'
});

$('input[name="freelance-response"]').on('switchChange.bootstrapSwitch', function(event, state) {
    console.log(this); // DOM element
    console.log(event); // jQuery event
    console.log(state); // true | false
});