class Tag < ApplicationRecord
    has_many :taggings, dependent: :delete_all
    has_many :events, through: :taggings
    has_and_belongs_to_many :searches
end
