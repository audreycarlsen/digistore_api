class Order < ActiveRecord::Base
  belongs_to :cart

  validates :email, presence: true, format: {with: /\w+@\w+\.\w+/i}
  validates :name, presence: true
  validates :exp_date, presence: true
  validates :cvv, presence: true, numericality: true, length: { is: 3 }
  validates :zipcode, presence: true, numericality: true, length: { is: 5 }
end
