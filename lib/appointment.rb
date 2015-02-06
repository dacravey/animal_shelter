class Appointment < ActiveRecord::Base
  has_and_belongs_to_many(:animals, join_table: "appointments")
end
