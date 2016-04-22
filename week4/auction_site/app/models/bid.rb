class Bid < ActiveRecord::Base
    belongs_to :product
    belongs_to :user
    validates :user_id, presence: true
    validates :product_id, presence: true
    validates :amount, presence: true, numericality: {greater_than_or_equal_to: 0}

end
