class Cart < ActiveRecord::Base
  has_many   :items
  belongs_to :order
end
