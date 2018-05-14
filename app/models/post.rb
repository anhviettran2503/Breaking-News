class Post < ApplicationRecord
  has_many :posttypes,dependent: :destroy
  has_many :types,through: :posttypes
  accepts_nested_attributes_for :posttypes
end
