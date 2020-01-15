class Movie < ApplicationRecord
    has_many :theatres
    has_many :cinemas, through: :theatres
end
