class Customer < ActiveRecord::Base
  has_and_belongs_to_many(:animals, join_table: "appointments")
  validates(:customer_name, :presence => true)
end
