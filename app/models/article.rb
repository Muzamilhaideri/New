class Article < ApplicationRecord
  validates :Title, presence: true, format: { with: /\A[a-zA-Z]+\z/,
            message: "only allows letters" },length: {minimum: 2}, uniqueness: true 
  validates :Text, length: {maximum: 500}, absence: true
end
