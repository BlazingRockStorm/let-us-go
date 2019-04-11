class Event < ApplicationRecord
    has_many :attendances
    has_many :comments
    has_many :users, through: :attendances
    has_many :taggings
    has_many :tags, through: :taggings
    has_many_attached :pictures
    scope :by_hidden_status, -> {where hidden_status: false }
    validates :start, presence: true, date: { after: Proc.new { Date.today + 3 }, message: "must be at least #{(Date.today + 4).strftime("%H:%M %Y/%m/%d").to_s}" }, on: :create
    validates :end, presence: true, date: { after:  :start}

    def all_tags=(names)
        self.tags = names.split(",").map do |name|
            Tag.where(name: name.strip).first_or_create!
        end
    end
    
    def all_tags
        self.tags.map(&:name).join(", ")
    end

    def self.tagged_with(name)
        Tag.find_by_name!(name).events
    end
end
