class User < ApplicationRecord
  has_secure_password
  has_one :reward_manager, dependent: :delete
end
