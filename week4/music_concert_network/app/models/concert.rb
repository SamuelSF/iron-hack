class Concert < ActiveRecord::Base
    validates :artist, presence: true
    validates :venue, presence: true
    validates :city, presence: true
    validates :description, presence: true
    validates :date, presence: true
    validates :price, presence: true
    has_many :comments

    def self.concerts_today
        self.where("date < ?", Date.today + 1.day).where("date >= ?", Date.today)
    end

    def self.concerts_this_month
        self.where("date <= ?", Date.today + 1.month).where("date >= ?", Date.today)
    end
end
