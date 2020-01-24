class Movie < ApplicationRecord
    has_many :theatres
    has_many :cinemas, through: :theatres
    validates :title, presence: true
    validates :runtime, presence: true, numericality: {greater_than: 0}

    scope :search, -> (query) { where("title LIKE ?", "%" + query + "%") }
end
