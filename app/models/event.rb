require 'event_recommender'

class Event < ApplicationRecord
    include SearchCop
    paginates_per 3

    has_many :attendances, dependent: :delete_all
    has_many :comments, dependent: :delete_all
    has_many :users, through: :attendances
    has_many :taggings, dependent: :delete_all
    has_many :tags, through: :taggings
    has_many_attached :pictures
    scope :by_hidden_status, -> {where hidden_status: false}
    belongs_to :place

    search_scope :search do
        attributes :name, :description, :start, :age_filter
        attributes place: "place.name"
        # ...
    end

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

    def as_json options={}
        {
            id: id,
            title: name,
            description: description,
            start: start,
            end: self.end,
            url: "/events/#{id}"
        }
    end

    after_commit ->(event) do
        EventRecommender.add_event(event)
    end, if: :persisted?
    
    after_commit ->(event) do
        EventRecommender.delete_event(event)
    end, on: :destroy
end
