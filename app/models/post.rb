class Post < ApplicationRecord
	validates :title, :body, presence: true,
				length: {minimum: 5}
end
