function vote(id_author) {
    $.ajax({
        type: "PATCH",
        url: "/user/vote/" + $(id_author).text(),
        error: function(xhr, status, err) {
            console.error(xhr, status, err.toString());
        }.bind(this)
    });
}