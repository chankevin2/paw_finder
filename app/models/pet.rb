class Pet < ApplicationRecord
  has_many :favorites
  has_many :users

  # validates: :name, presence: true
  # validates: :animal, presence: true
  # validates: :description, presence: true
  # validates: :age, presence: true
  # validates: :size, presence: true
  # validates: :gender, presence: true
  # validates: :age, presence: true
end
