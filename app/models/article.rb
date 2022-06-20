class Article < ApplicationRecord
  validates :Title, presence: true, format: { with: /\A[a-zA-Z]+\z/,
            message: "only allows letters" }
end
