class Story < ApplicationRecord
  belongs_to :user, dependent: :destroy, presence: true 
end
