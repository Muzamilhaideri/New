class User < ApplicationRecord
  has_many :stories, dependent: :destroy
  has_one :profile, dependent: :destroy
end
