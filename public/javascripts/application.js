$(function () {
    $('#jobs th a, #jobs .pagination a').live('click', function () {
        $.getScript(this.href);
        return false;
    });

    // Search form.
    $('#jobs_search').submit(function () {
        $.get(this.action, $(this).serialize(), null, 'script');
        return false;
    });
});


