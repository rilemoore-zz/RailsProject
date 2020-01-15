class Cinema < ApplicationRecord
    has_many :theatres
    has_many :movies, through: :theatres
end
