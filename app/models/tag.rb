class Tag < ApplicationRecord
    has_many :taggings, dependent: :delete_all
    has_many :events, through: :taggings
end
