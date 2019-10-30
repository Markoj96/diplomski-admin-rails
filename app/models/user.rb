class User < ApplicationRecord
  establish_connection API_DATABASE

  has_many :vehicles
  has_many :houses
  has_many :businesses
  has_many :special_businesses

  has_secure_password

  # has_many :vehicles
  enum gender: [:male, :female]
  enum role: [:player, :admin]
  enum country: [:serbia, :montenegro, :bosnia_and_herzegovina, :macedonia, :croatia, :other]
  enum city: [:los_santos, :las_venturas, :san_fierro]

  # add enum country, add enum city

  def self.create(params)
    Actions::Users::Create.execute(params)
  end

  def auth_token(expiration = 24.hours)
    token_payload = { user_id: id, exp: Time.now.to_i + expiration }
    JWT.encode(token_payload, Rails.application.credentials.secret_key_base, 'HS256')
  end
end
