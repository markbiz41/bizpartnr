class MessagesController < InheritedResources::Base

  def index
    @sent = current_user.sent_messages
    @received = current_user.received_messages
  end

  def new
    @message = Message.new
    @receiver = User.find(params[:user_id])
  end

  def create
    @message = Message.new(message_params)

    @message.sender = current_user


    if @message.save
      redirect_to root_path, notice: 'Message was sent'
    else
      render 'new'
    end
  end

  private

    def message_params
      params.require(:message).permit(:receiver_id, :sender_id, :content)
    end
end
