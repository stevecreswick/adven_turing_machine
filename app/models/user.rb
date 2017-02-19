class User < ApplicationRecord
  has_many :stories
  has_many :plot_devices

  validates_uniqueness_of :username
  validates_uniqueness_of :email
  validates_uniqueness_of :auth_token

  has_secure_password
  before_create :set_auth_token

  private

  def set_auth_token
    return if auth_token.present?
    self.auth_token = generate_auth_token
  end

  def generate_auth_token
    loop do
      token = SecureRandom.hex
      break token unless self.class.exists?(auth_token: token)
    end
  end
end
