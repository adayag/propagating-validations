class Event < ActiveRecord::Base
  validates :organizer_name, presence: true
  validates :organizer_email, presence: true
  validates :title, presence: true
  validates :date, presence: true, format: {with: /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/}
end
