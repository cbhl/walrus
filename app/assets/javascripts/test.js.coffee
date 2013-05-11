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

    add_user_button = $("#add-user-button")
    add_user_button.on("click", ->
        console.log("Add user: BEGIN")
        $.ajax({
            url: "/users.json",
            dataType: "json",
            data: {
                user: {
                    name: "Michael Chang",
                    phone: "+16477055944",
                },
            },
            type: 'POST',
        }).then((data) ->
            console.log("Add user: SUCCESS")
            console.log(data)
        , (jqXHR, textStatus) ->
            console.log("Add user: ERROR")
            console.log(textStatus)
        )
    )

    add_contact_button = $("#add-contact-button")
    add_contact_button.on("click", ->
        console.log("Add contact: BEGIN")
        $.ajax({
            url: "/contacts.json",
            dataType: "json",
            data: {
                contact: {
                    name: "Michael Chang",
                    phone: "+16477055944",
                    callable: true,
                },
            },
            type: 'POST',
        }).then((data) ->
            console.log("Add contact: SUCCESS")
            console.log(data)
        , (jqXHR, textStatus) ->
            console.log("Add contact: ERROR")
            console.log(textStatus)
        )
    )
)
