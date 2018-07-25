App.messages = App.cable.subscriptions.create('MessagesChannel',
  received: (data) ->
    $('#messages').append @renderMessage(data)
   connected: -> 
   	$('#messages').append "AAAAAAAAAAAAAAAAAAA"
  renderMessage: (data) ->
    '<p> <span style="color: red">' + data.user + ': </span>' + data.message + '</p>'
)