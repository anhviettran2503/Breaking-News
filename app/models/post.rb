class Post < ApplicationRecord
  has_many :posttypes
  has_many :types,through: :posttypes
end
