class Posttype < ApplicationRecord
  belongs_to :post
  belongs_to :type
end
