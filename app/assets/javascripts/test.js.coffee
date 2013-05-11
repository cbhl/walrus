# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(->
    make_call_button = $("#make-call-button")
    make_call_button.on("click", ->
        console.log("Test call: BEGIN")
        $.ajax({
            url: "/api/v1/test_call.json",
            dataType: "json",
        }).then((data) ->
            console.log("Test call: SUCCESS")
            console.log(data)
        , (jqXHR, textStatus) ->
            console.log("Test call: ERROR")
            console.log(textStatus)
        )
    )
)
