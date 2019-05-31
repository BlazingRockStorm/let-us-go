class Search < ApplicationRecord
  has_and_belongs_to_many :tags

  def search_events
    events = Event.all

    events = events.where(["events.name LIKE ?","%#{name}%"]) if name.present?
    events = events.includes(:tags).where(tags: {id: tag_ids}) if tag_ids.present?
    events = events.where(["events.indoor_status = ?", status]) if status.present?
    events = events.where(["events.sex_status = ?", sex]) if sex.present?
    events = events.where(["events.age_filter >=?", min_age]) if min_age.present?
    events = events.where(["events.age_filter <=?", max_age]) if max_age.present?
    events = events.where(["events.adult_price >=?", min_adult_price]) if min_adult_price.present?
    events = events.where(["events.adult_price <=?", max_adult_price]) if max_adult_price.present?
    events = events.where(["events.child_price >=?", min_child_price]) if min_child_price.present?
    events = events.where(["events.child_price <=?", max_child_price]) if max_child_price.present?

    return events
  end
end
