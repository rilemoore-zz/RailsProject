class Theatre < ApplicationRecord
    belongs_to :movie, optional: true
    belongs_to :cinema, optional: true
    accepts_nested_attributes_for :movie
end