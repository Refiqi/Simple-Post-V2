# frozen_string_literal: true

# Comment Table
class Comment < ApplicationRecord
  belongs_to :post
end
