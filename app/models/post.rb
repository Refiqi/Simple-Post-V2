# frozen_string_literal: true

# Post Table
class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :body, presence: true,
                           length: { minimum: 5 }
end
