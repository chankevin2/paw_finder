class User < ApplicationRecord
  has_many :favorites
  has_many :pets
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
