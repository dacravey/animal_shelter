class Animal < ActiveRecord::Base
  has_and_belongs_to_many(:customers, join_table: "appointments")
  validates(:animal_name, :presence => true)


end
