class Post < ApplicationRecord
	has_many :comments
validates :title, :body, presence: true,
			length: {minimum: 5}
end
