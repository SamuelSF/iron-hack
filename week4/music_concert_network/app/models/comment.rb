class Comment < ActiveRecord::Base
    belongs_to :concert
    validates :description, presence: true
    validates(:concert_id, presence: true, numericality:
        {only_integer: true, greater_than_or_equal_to: 0})

end
