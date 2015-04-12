class User < ActiveRecord::Base
  attr_accessor :password_confirmation

  mount_uploader :avatar, AvatarUploader

  has_many :opportunities

  has_many :sent_messages, class_name: "Message", foreign_key: :sender_id
  has_many :received_messages, class_name: "Message", foreign_key: :receiver_id

  def self.authenticate(email, password)
    user = find_by(email: email)

    if user && user.password == password
      user
    else
      nil
    end
  end
end
