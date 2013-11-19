/* Question and Answer */
$(function() {
    $('body').on('click', '.js-aemcasts-demo-components-content-general-q-and-a .question', function(e) {
        var $this = $(this);
        $this.find('.open').toggle();
        $this.find('.close').toggle();
        $this.siblings('.answer').toggle();
        e.preventDefault();
    });
});