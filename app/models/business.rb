class Business < ApplicationRecord
  establish_connection API_DATABASE

  belongs_to :user

  enum status:[:inactive, :active]
end
