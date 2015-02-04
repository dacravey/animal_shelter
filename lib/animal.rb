class Animal < ActiveRecord::Base
  has_and_belongs_to_many(:customers, join_table: "appointments")
  validates(:animal_name, :presence => true)
  validates(:gender, :presence => true)
  validates(:animal_type, :presence => true)
  validates(:breed, :presence => true)
  validates(:date_of_admit, :presence => true)


end
