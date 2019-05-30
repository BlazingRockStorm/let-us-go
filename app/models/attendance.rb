class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user_id, uniqueness: {scope: :event_id}
  validates :start_time, presence: true#, date: {after: Proc.new {Date.today + 4}, message: "must be at least #{(Date.today + 4).strftime("%H:%M %Y/%m/%d").to_s}"}, on: :create
  validates :end_time, presence: true, date: {after: :start_time}

  def as_json options={}
    {
      id: event.id,
      title: event.name,
      description: event.description,
      start: start_time,
      end: end_time,
      url: "/events/#{event.id}"
    }
  end
end
