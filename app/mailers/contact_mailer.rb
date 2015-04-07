class ContactMailer < ApplicationMailer

  def send_message(message_content)
    @message = message_content
    mail(to: 'markbiz31@yahoo.com', subject: 'New Message from BizPartnr Contact Form')
  end
end
