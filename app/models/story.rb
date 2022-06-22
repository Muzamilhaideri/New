class Story < ApplicationRecord
  belongs_to :user
  has_many :readers
  has_many :pictures, as: :imageable
end
