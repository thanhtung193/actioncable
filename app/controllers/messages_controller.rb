class MessagesController < ApplicationController
	def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save
      ActionCable.server.broadcast 'chat_room_123',
        message: message.body,
        user: message.user.email
      head :ok
    else 
      redirect_to chatrooms_path
    end
  end

  private

    def message_params
      params.require(:message).permit(:body)
    end
end
