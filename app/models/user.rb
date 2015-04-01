class User < ActiveRecord::Base
  attr_accessor :password_confirmation


  def self.authenticate(email, password)
    user = find_by(email: email)

    if user && user.password == password
      user
    else
      nil
    end
  end
end
