class Article < ApplicationRecord
  validates :Title, format: { with: /\A[a-zA-Z]+\z/,
            message: "only allows letters" },length: {minimum: 2}, uniqueness: true,  presence: { message: "must be given please" }
  validates :Text, length: {maximum: 500}, absence: true
end
