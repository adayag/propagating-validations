class Event < ActiveRecord::Base
  validates :organizer_name, presence: true
  validates :date, presence: true
  validates :title, presence: true, uniqueness: true
  validates :organizer_email, presence: true, format: {with: /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$/, message: "Not a valid email format."}
  validate  :no_past_date
   
 
  def no_past_date
    if date.present? && date < Date.today
      errors.add(:date, "cannot be in the past") 
    end
  end
end
