class User < ApplicationRecord

  attr_reader :password

  validates :username, :session_token, presence: true, uniqueness: true
  validates :password_digest, presence: { message: "password can't be blank" }
  validates :session_token, presence: true, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }

  def self.find_by_credentials(username, password)
    # if db.include? username
        # if password.bhash = password_digest
          #return user
        # end
      #end

      user = User.find_by(username: username)
    return user if user && BCrypt::Password.new(user.password_digest).is_password?(password)
    nil

  end

  def self.generate_session_token
    @token = SecureRandom::urlsafe_base64(16)

  end

  def reset_session_token!
    # @session_token = self.generate_session_token

    self.session_token = User.generate_session_token
    self.save!
    self.session_token

  end

  def ensure_session_token
    # if session_token.nil?
    #   reset_session_token!
    # end

    self.session_token ||= User.generate_session_token

  end

  def password=(password)
    # @password.bhash == password_digest.to_s

    @password = password
    self.password_digest = BCrypt::Password.create(password)

  end
end
