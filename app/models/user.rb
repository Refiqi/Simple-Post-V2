# frozen_string_literal: true

# User Table
class User < ApplicationRecord
  has_secure_password
end
