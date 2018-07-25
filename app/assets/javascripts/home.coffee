App.cable.subscriptions.create {
  channel: "MessagesChannel"
  id: '123'
  },
  received: (data) ->
    $('#messages').append @renderMessage(data)
   connected: -> 
   	$('#messages').append "AAAAAAAAAAAAAAAAAAA"
  renderMessage: (data) ->
    '<p> <span style="color: red">' + data.user + ': </span>' + data.message + '</p>'
