class User < ActiveRecord::Base
 has_many :posts
 # has_many :guesses
 has_secure_password

  validates :email, presence: true, uniqueness: true,
    format: {
      with: /.+\@.+\..+/,
      message: "must have an @ symbol and period"
    }
  validates :auth_token, presence: true


  def ensure_auth_token
    unless self.auth_token
      self.auth_token = User.generate_token
    end
  end

  def self.generate_token
    token = SecureRandom.hex
    while User.exists?(auth_token: token)#making sure no duplicates
      token = SecureRandom.hex
    end
    token
  end
end
