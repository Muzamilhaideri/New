class User < ApplicationRecord
  has_many :stories, dependent: :destroy
  has_one :profile, dependent: :destroy
  has_many :readers, through: :stories
end
