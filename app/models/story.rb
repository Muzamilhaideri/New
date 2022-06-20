class Story < ApplicationRecord
  belongs_to :user, presence: true
end
