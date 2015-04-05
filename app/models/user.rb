class User < ActiveRecord::Base
  attr_accessor :password_confirmation

  mount_uploader :avatar, AvatarUploader

  has_many :opportunities

  def self.authenticate(email, password)
    user = find_by(email: email)

    if user && user.password == password
      user
    else
      nil
    end
  end
end
