//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require bootstrap-switch
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
});
var TxtRotate = function(el, toRotate, period) {
  this.toRotate = toRotate;
  this.el = el;
  this.loopNum = 0;
  this.period = parseInt(period, 10) || 2000;
  this.txt = '';
  this.tick();
  this.isDeleting = false;
};

TxtRotate.prototype.tick = function() {
  var i = this.loopNum % this.toRotate.length;
  var fullTxt = this.toRotate[i];

  if (this.isDeleting) {
    this.txt = fullTxt.substring(0, this.txt.length - 1);
  } else {
    this.txt = fullTxt.substring(0, this.txt.length + 1);
  }

  this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';

  var that = this;
  var delta = 300 - Math.random() * 100;

  if (this.isDeleting) { delta /= 2; }

  if (!this.isDeleting && this.txt === fullTxt) {
    delta = this.period;
    this.isDeleting = true;
  } else if (this.isDeleting && this.txt === '') {
    this.isDeleting = false;
    this.loopNum++;
    delta = 500;
  }

  setTimeout(function() {
    that.tick();
  }, delta);
};

window.onload = function() {
  var elements = document.getElementsByClassName('txt-rotate');
  for (var i=0; i<elements.length; i++) {
    var toRotate = elements[i].getAttribute('data-rotate');
    var period = elements[i].getAttribute('data-period');
    if (toRotate) {
      new TxtRotate(elements[i], JSON.parse(toRotate), period);
    }
  }
  // INJECT CSS
  var css = document.createElement("style");
  css.type = "text/css";
  css.innerHTML = ".txt-rotate > .wrap { border-right: 0.08em solid #666 }";
  document.body.appendChild(css);
};
