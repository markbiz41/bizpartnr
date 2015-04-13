class Message < ActiveRecord::Base
  belongs_to :receiver, class_name: "User"
  belongs_to :sender, class_name: "User"

  after_create :send_email


  def send_email
    MessageMailer.send_message(self).deliver_now!
  end
end
