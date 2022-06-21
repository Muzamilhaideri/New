class Reader < ApplicationRecord
  belongs_to :story
  has_many :users, through: :stories
end
