var ready = function() {
    // do stuff here.
    $('[data-toggle="tooltip"]').tooltip();
    AOS.init({
      offset: 150,
      duration: 600,
      easing: 'ease-in-sine',
      delay: 100,
      // once: true,
    });
};

$(document).ready(ready);
$(document).on('turbolinks:load', ready);
