class User < ApplicationRecord
  has_many :stories, dependent: :destroy
  has_one :profile, dependent: :destroy
  has_many :readers, through: :stories
  has_and_belongs_to_many :roles
  has_many :pictures, as: :imageable
  has_one :category, through: :profile
end
