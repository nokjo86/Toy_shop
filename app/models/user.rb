class User < ApplicationRecord
has_many :toys, dependent: :destroy
has_many :images, as: :imageable
validates_confirmation_of :password
end
