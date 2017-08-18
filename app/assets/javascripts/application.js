//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-switch
//= require banner
//= require bootstrap-datepicker
//= require_tree .
$(document).ready(function() {
    $("[name='freelance-response']").bootstrapSwitch({
        size: 'small',
        onText: '<i class="fa fa-circle"></i>',
        offText: '<i class="fa fa-circle"></i>',
        labelText: '<i class="target fa fa-question-circle"></i>'
    });
    $('input[name="freelance-response"]').on('switchChange.bootstrapSwitch', function(event, state) {
        $switch = $(this).parents(".bootstrap-switch-container").find('i.target');
        if (state) {
            $switch.attr('class', 'target fa fa-check-circle');
        } else {
            $switch.attr('class', 'target fa fa-times-circle');
        }
    });
    $('[data-target="sent"]').click(function(event) {
        $('.tab').removeClass('active');
        $(this).addClass('active');
        $("#received").hide();
        $("#sent").show();
    });
    $('[data-target="received"]').click(function(event) {
        $('.tab').removeClass('active');
        $(this).addClass('active');
        $("#sent").hide();
        $("#received").show();
    });
    $search = $('#search');
    $users = $("#users-overview");
    $search.keypress(function(e) {
        if (e.which == 13) {
            $(this).closest('form').submit();
        }
    });
    if ($users.length > 0) {
        $(window).scroll(function(event) {
            var scrollTop = $(window).scrollTop();
            var usersTop = $users.offset().top;
            if (scrollTop >= usersTop - 50) {
                $search.addClass('visible');
            } else {
                $search.removeClass('visible');
            }
        });
    } 
    // else {
    //     $search.addClass('visible');
    // }
});