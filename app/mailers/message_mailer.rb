class MessageMailer < ApplicationMailer

  def send_message(message)
    @message = message
    mail(to: message.receiver.email, subject: 'You have a New Message on BizPartnr')
  end
end
