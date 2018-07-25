class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat_room"
  end
end