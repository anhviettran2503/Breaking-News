class Type < ApplicationRecord
  has_many :posttypes
  has_many :posts,through: :posttypes
end
