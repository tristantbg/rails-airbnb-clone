//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-switch
//= require_tree .


$(document).ready(function(){	
$("[name='freelance-response']").bootstrapSwitch({
    size: 'small',
    onText: '',
    offText: '',
    labelText: '<i class="fa fa-circle"></i>'
});

$('input[name="freelance-response"]').on('switchChange.bootstrapSwitch', function(event, state) {
    $switch = $(this).parents(".bootstrap-switch-container").find('i.fa');
    console.log($switch);
        console.log($(this));

    if (state) {
    	$switch.attr('class', 'fa fa-check-circle');
    } else {
    	$switch.attr('class', 'fa fa-times-circle');
    }
});
})