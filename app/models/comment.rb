class Comment < ApplicationRecord
	validates :username, :body, presence: true,
				length:{minimum: 5}
	belongs_to :post
end
