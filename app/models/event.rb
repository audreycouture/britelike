class Event < ApplicationRecord
  has_many :attendees, class_name "User"
  belongs_to :creator, class_name "User"
end
